@extends('frontend.master')
@section('title')
    Đại Lý Quảng Cáo Facebook Chuyên Nghiệp Hiệu Quả - Smartlinks.vn
@stop
@section('description')
    {{--Đại Lý Uy Tín Chuyên Về Quảng Cáo Facebook Với Chi Phí Thấp - Hiệu Quả Cao, Tiếp Cận Chính Xác Nguồn Khách Hàng, Đối Tác Của Nhiều Công Ty Lớn Tại HCM--}}
@stop
@section('container')
    <div id="tt-detail" class="col-md-12">
        <div class="row">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="wpContainHeader">
                                {{ Html::image($tintuc->image,'',array('class'=>'dvBanner')) }}
                                <div class="wpTextHeader">
                                    <div class="textHeader">
                                        <h1> {{$tintuc->title}}</h1>
                                        <div class="subTextHeading">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div id="tt-dt-content" class="col-md-12">
                            <div id="tt-dt-content-left" class="col-md-8">
                                {!! $tintuc->content !!}
                            </div>
                            <div id="tt-dt-content-right" class="col-md-4">
                                <h3>Có Thể Bạn Quan Tâm</h3>
                                @foreach($order_tintucs as $key=>$data)
                                    <div class="one-item col-md-12">
                                        <a href="{{URL::to('tin-tuc/'.$data->path)}}">
                                            <div class="row">
                                                {{ Html::image($data->image,'',array('class'=>'dvBanner')) }}
                                                <span class="title">{{$data->title}}</span>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop