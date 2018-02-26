@extends('frontend.master')
@section('title')
    Thiết Kế Website Chuẩn SEO Chuyên Nghiệp - Smartlinks.vn
@stop
@section('description')
    Smartlinks Là Công Ty Thiết Kế Website Chuyên Nghiệp. Chúng Tôi Chuyên Thiết Kế Website Nhà Hàng, Bất Động Sản, Bán Hàng Chuẩn SEO. ☎ Hotline: 0907 468 264
@stop
@section('slider')
    {{--@include('slider.slider')--}}
@stop
@section('container')
    <div id="dv_web_info">
        @include('frontend.dichvu.website.dv_web_header')
        @include('frontend.dichvu.website.dv_web_info')
    </div>
    @include('frontend.common.LienHeBaoGia')
@stop