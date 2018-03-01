<?php

namespace App\Http\Controllers;

use App\CategoryPost;
use App\Menu;
use App\Post;
use Illuminate\Http\Request;

class ThuNghiemController extends Controller
{
   public function thunghiem(){
//       return response()->json('hi Quang');
   }
   public function loadCreateThuNghiem(){
       $pages=Post::where('post_type',1)->where('isActive',1)->get(['id','title']);
       $category_posts=CategoryPost::orderBy('order')->get(['id','name']);
       return view('backend.admin.test.create', compact('pages','category_posts'));
   }
   public function storeCreateThuNghiem(Request $request){
//       dd($request);
       $menu=new Menu();
       $name = $request->input('name');
       $isActive=$request->input('menu_is_active');
       $typeStateMenu=$request->input('type_state_menu');
       $categoryId=$request->input('category_id');
       $pageId=$request->input('page_id');
       $stateMenuCategory=$request->input('state_menu_category');
       $order=$request->input('order');
       if($order){
           $menu->order = $order;
       }else{
           $menu->order = 1;
       }
       if($typeStateMenu==1){
           if($stateMenuCategory){
               $menu->content_id=$categoryId;
               $menu->type=2;// Danh Mục Trang
           }
           else{
               $menu->content_id=$pageId;
               $menu->type=1;// Trang
           }
       }
       if($isActive){
           $menu->isActive=1;
       }
       $menu->level=0;
       $menu->name = $name;
//       $menu->path = chuyen_chuoi_thanh_path($name).'-'.rand(pow(10, 6), pow(10, 5)-1);
       $menu->path = chuyen_chuoi_thanh_path($name);
       $menu->save();
       return redirect()->route('thunghiem.index')->with('success', 'Tạo Mới Thành Công Bài Viết');
   }
}
