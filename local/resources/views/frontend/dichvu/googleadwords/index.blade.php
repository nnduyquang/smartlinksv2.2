@extends('frontend.master')
@section('title')
    Quảng Cáo Google Adwords Chuyên Nghiệp Hiểu Quả - Smartlinks.vn
@stop
@section('description')
    Smartlinks Là Công Ty Dịch Vụ Quảng Cáo Google Adwords Giá Rẻ Với Chi Phí Thấp - Hiệu Quả Cao, Đúng Đối Tượng Khách Hàng. ☎ Hotline: 0914 348 131
@stop
@section('slider')
    @include('slider.slider')
@stop
@section('container')
    @include('frontend.dichvu.googleadwords.dv_ga_header')
    @include('frontend.dichvu.googleadwords.dv_ga_info')
    @include('frontend.common.HinhThucVaGia')
    @include('frontend.common.LienHeBaoGia')
@stop