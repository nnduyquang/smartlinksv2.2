@extends('frontend.master')
@section('title')
    Đại Lý Quảng Cáo Facebook Chuyên Nghiệp Hiệu Quả - Smartlinks.vn
@stop
@section('description')
    Đại Lý Uy Tín Chuyên Về Quảng Cáo Facebook Với Chi Phí Thấp - Hiệu Quả Cao, Tiếp Cận Chính Xác Nguồn Khách Hàng, Đối Tác Của Nhiều Công Ty Lớn Tại HCM
@stop
@section('slider')
    {{--@include('slider.slider')--}}
@stop
@section('container')
    @include('frontend.dichvu.facebook.dv_fb_header')
    @include('frontend.dichvu.facebook.dv_fb_info')
    @include('frontend.common.LienHeBaoGia')
@stop