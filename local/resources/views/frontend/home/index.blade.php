@extends('frontend.master')@section('title')    Công Ty Quảng Cáo Google Adwords Chuyên Nghiệp Hiệu Quả - Smartlinks.vn@stop@section('description')    Smartlinks Là Công Ty Dịch Vụ Quảng Cáo Google Adwords Giá Rẻ Với Chi Phí Thấp - Hiệu Quả Cao, Đúng Đối Tượng Khách Hàng. ☎ Hotline: 0914 348 131@stop@section('styles')    {{ Html::style('css/themes/default/default.css') }}@stop@section('slider')    @include('slider.slider')    {{--<div class="col-md-12">--}}    {{--<div class="row">--}}    {{--@include('slider.slider2')--}}    {{--</div>--}}    {{--</div>--}}@stop@section('container')    @include('frontend.home.h_why')    @include('frontend.home.h_analytic')    @include('frontend.home.h_service')    @include('frontend.home.h_employee')    @include('frontend.common.HinhThucVaGia')    @include('frontend.common.LienHeBaoGia')@stop