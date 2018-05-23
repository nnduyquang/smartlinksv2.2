@extends('frontend.master')
@section('title')
    {{$data['postMain']->seo_title}}
@stop
@section('description')
    {{$data['postMain']->seo_description}}
@stop
@section('slider')
    @include('slider.slider')

@stop
@section('container')
    @include('frontend.hoidap.hd_header')
    @include('frontend.hoidap.hd_info')
@stop