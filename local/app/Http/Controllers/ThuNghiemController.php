<?php

namespace App\Http\Controllers;

use App\CategoryPost;
use App\Menu;
use App\Post;
use Illuminate\Http\Request;

class ThuNghiemController extends Controller
{
    public function loadTreeMenu()
    {
        $menus = Menu::all(['id', 'name', 'type', 'isActive', 'content_id', 'parent_id', 'level']);
        $children = array();
        foreach ($menus as $key => $data) {
            $data['children'] = $children;
            $data['text'] = $data->name;
            unset($data->name);
        }
        $newArray = array();
        self::findChildMenu($menus, 0, $newArray);
        $newArray = array_reverse($newArray);
//        $newArray2 = $newArray;
        foreach ($newArray as $key => $data) {
            if ($data->level == 0)
                continue;
            foreach ($newArray as $key2 => $data2) {
                if ($data2->id == $data->parent_id) {
                    $temp = array($data);
                    $data2->children = array_merge($data2->children, $temp);
                    break;
                }
            }
            unset($newArray[$key]);
        }
//        dd(json_encode($children2));
        $newArray = array_reverse($newArray);
        return response()->json($newArray);
    }

    public function loadCreateThuNghiem()
    {
        $pages = Post::where('post_type', 1)->where('isActive', 1)->get(['id', 'title']);
        $category_posts = CategoryPost::orderBy('order')->get(['id', 'name']);
        return view('backend.admin.test.create', compact('pages', 'category_posts'));
    }

    public function storeCreateThuNghiem(Request $request)
    {
        $menu = new Menu();
        $name = $request->input('name');
        $isActive = $request->input('menu_is_active');
        $typeStateMenu = $request->input('type_state_menu');
        $categoryId = $request->input('category_id');
        $pageId = $request->input('page_id');
        $stateMenuCategory = $request->input('state_menu_category');
        $order = $request->input('order');
        $parentId = $request->input('parentId');
        $level = $request->input('level');
        if ($order) {
            $menu->order = $order;
        } else {
            $menu->order = 1;
        }
        if ($typeStateMenu == 1) {
            if ($stateMenuCategory) {
                $menu->content_id = $categoryId;
                $menu->type = 2;// Danh Mục Trang
            } else {
                $menu->content_id = $pageId;
                $menu->type = 1;// Trang
            }
        }
        if ($isActive) {
            $menu->isActive = 1;
        } else {
            $menu->isActive = 0;
        }
        if ($parentId) {
            $menu->parent_id = $parentId;
            $menu->level = (int)$level + 1;
        } else {
            $menu->parent_id = null;
            $menu->level = 0;
        }
        $menu->name = $name;
//       $menu->path = chuyen_chuoi_thanh_path($name).'-'.rand(pow(10, 6), pow(10, 5)-1);
        $menu->path = chuyen_chuoi_thanh_path($name);
        $menu->save();
        return redirect()->route('thunghiem.index')->with('success', 'Tạo Mới Thành Công Bài Viết');
    }

    public function updateCreateThuNghiem(Request $request, $id)
    {
        $menu = Menu::find($id);
        $name = $request->input('name');
        $isActive = $request->input('menu_is_active');
        $typeStateMenu = $request->input('type_state_menu');
        $categoryId = $request->input('category_id');
        $pageId = $request->input('page_id');
        $stateMenuCategory = $request->input('state_menu_category');
        $order = $request->input('order');
        if ($order) {
            $menu->order = $order;
        } else {
            $menu->order = 1;
        }
        if ($typeStateMenu == 1) {
            if ($stateMenuCategory) {
                $menu->content_id = $categoryId;
                $menu->type = 2;// Danh Mục Trang
            } else {
                $menu->content_id = $pageId;
                $menu->type = 1;// Trang
            }
        }
        if ($isActive) {
            $menu->isActive = 1;
        }
//        $menu->level = 0;
        $menu->name = $name;
        $menu->path = chuyen_chuoi_thanh_path($name);
        $menu->save();
        return redirect()->route('thunghiem.index')->with('success', 'Tạo Mới Thành Công Bài Viết');
    }

    public function findChildMenu($menus, $parent_id = 0, &$newArray)
    {
        foreach ($menus as $key => $data) {
            if ($data->parent_id == $parent_id) {
                array_push($newArray, $data);
                $menus->forget($key);
                self::findChildMenu($menus, $data->id, $newArray);
            }
        }
    }

    public function findObject($id)
    {
        $menu = Menu::find($id);
        return response()->json($menu);
    }

    public function updateNodeFamily($id, $parentId)
    {
        $menu = Menu::find($id);
        if ($parentId == 0) {
            $menu->parent_id = null;
            $menu->level = 0;
        } else {
            $menu->parent_id = $parentId;
            $parentMenu = Menu::find($parentId);
            $menu->level = (int)$parentMenu->level + 1;
        }
        $menu->save();
    }

    public function deleteMenu($id)
    {
        $listMenu = Menu::all();
        $menu = Menu::find($id);

        self::updateMenuChildDelete($listMenu, $menu);
        $menu->delete();
        return redirect()->route('thunghiem.index')->with('success', 'Xóa Thành Công Menu');
    }

    public function updateMenuChildDelete(&$listMenu, $menu)
    {
        foreach ($listMenu as $key => $data) {
            if ($menu->id == $data->parent_id) {
                $data->level = 0;
                $data->parent_id = null;
                $data->save();
//                dd(json_encode($data));
                self::updateMenuChildDelete($listMenu, $data);
            }
        }
    }

}
