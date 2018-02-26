<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TuyenDungController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $tuyendungs = Post::where('post_type','=',3)->orderBy('id', 'DESC')->get();
        return view('backend.admin.tuyendung.index', compact('tuyendungs'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.tuyendung.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tuyendung = new Post();
        $title = $request->input('title');
        $description = $request->input('description');
        $content = $request->input('content');
        $seoTitle = $request->input('seo_title');
        $seoDescription = $request->input('seo_description');
        $isActive = $request->input('tuyendung_is_active');
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        if ($isActive) {
            $tuyendung->isActive = 1;
        } else {
            $tuyendung->isActive = 0;
        }
        if ($description) {
            $tuyendung->description = $description;
        }
        if ($seoTitle) {
            $tuyendung->seo_title = $seoTitle;
        }
        if ($seoDescription) {
            $tuyendung->seo_description = $seoDescription;
        }
        $tuyendung->title = $title;
        $tuyendung->path = chuyen_chuoi_thanh_path($title);
        $tuyendung->image = $image;
        $tuyendung->content = $content;
        $tuyendung->post_type = 3;
        $tuyendung->user_id = Auth::user()->id;
        $tuyendung->save();
        return redirect()->route('tuyendung.index')
            ->with('success', 'Tạo Mới Thành Công Trang');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $tuyendung = Post::find($id);
        return view('backend.admin.tuyendung.edit', compact('tuyendung'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $tuyendung = Post::find($id);;
        $title = $request->input('title');
        $description = $request->input('description');
        $content = $request->input('content');
        $seoTitle = $request->input('seo_title');
        $seoDescription = $request->input('seo_description');
        $isActive = $request->input('tuyendung_is_active');
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        if ($isActive) {
            $tuyendung->isActive = 1;
        } else {
            $tuyendung->isActive = 0;
        }
        if ($description) {
            $tuyendung->description = $description;
        }
        if ($seoTitle) {
            $tuyendung->seo_title = $seoTitle;
        }
        if ($seoDescription) {
            $tuyendung->seo_description = $seoDescription;
        }
        $tuyendung->title = $title;
        $tuyendung->path = chuyen_chuoi_thanh_path($title);
        $tuyendung->image = $image;
        $tuyendung->content = $content;
        $tuyendung->post_type = 3;
        $tuyendung->user_id = Auth::user()->id;
        $tuyendung->save();
        return redirect()->route('tuyendung.index')
            ->with('success', 'Cập Nhật Thành Công Trang');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $tuyendung = Post::find($id);
        $tuyendung->delete();
        return redirect()->route('tuyendung.index')
            ->with('success', 'Đã Xóa Thành Công');
    }
    public function search(Request $request)
    {
        $keywords = preg_replace('/\s+/', ' ', $request->input('txtSearch'));
        $pages = Post::where('title', 'like', '%' . $keywords . '%')->orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.tuyendung.index', compact('pages', 'keywords'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
}
