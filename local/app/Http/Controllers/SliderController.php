<?php

namespace App\Http\Controllers;

use App\Slider;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sliders = Slider::orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.config.slider.index', compact('sliders'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.config.slider.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $slider = new Slider();
        $sliderImage = $request->input('slider_image');
        $sliderOrder = $request->input('slider_order');
        if($sliderOrder){
            $slider->slider_order = $sliderOrder;
        }else{
            $slider->slider_order = 1;
        }
        $sliderImage = substr($sliderImage, strpos($sliderImage, 'images'), strlen($sliderImage) - 1);
        $slider->slider_image = $sliderImage;
        $slider->save();
        return redirect()->route('config.slider.index')
            ->with('success', 'Thêm Slider Thành Công');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $slider = Slider::find($id);
        return view('backend.admin.config.slider.edit', compact('slider'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $slider = Slider::find($id);
        $sliderImage = $request->input('slider_image');
        $sliderOrder = $request->input('slider_order');
        $empIsActive=$request->input('slider_is_active');
        if($sliderOrder){
            $slider->slider_order = $sliderOrder;
        }else{
            $slider->slider_order = 1;
        }
        if($empIsActive){
            $slider->slider_is_active=1;
        }else{
            $slider->slider_is_active=0;
        }
        $sliderImage = substr($sliderImage, strpos($sliderImage, 'images'), strlen($sliderImage) - 1);
        $slider->slider_image = $sliderImage;
        $slider->save();
        return redirect()->route('config.slider.index')
            ->with('success', 'Cập Nhật Thành Công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $slider = Slider::find($id);
        $slider->delete();
        return redirect()->route('config.slider.index')
            ->with('success', 'Đã Xóa Slider');
    }
}
