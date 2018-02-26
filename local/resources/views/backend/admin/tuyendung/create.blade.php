@extends('backend.admin.master')
@section('styles')
@stop
@section('scripts')
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Tạo Mới Tuyển Dụng</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('tuyendung.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Úi!</strong> Hình Như Có Gì Đó Sai Sai.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::open(array('route' => 'tuyendung.store','method'=>'POST')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>Tuyển Dụng:</strong>
                            {!! Form::text('title',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                        </div>
                        <div class="form-group">
                            <strong>Mô Tả Ngắn:</strong>
                            {!! Form::textarea('description',null,array('placeholder' => '','id'=>'description-tuyen-dung','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>Hình Đại Diện: </strong>
                            {!! Form::text('image', null, array('class' => 'form-control','id'=>'pathImageTuyenDung')) !!}
                            <br>
                            {!! Form::button('Tìm', array('id' => 'btnBrowseImageTuyenDung','class'=>'btn btn-primary')) !!}
                        </div>
                        <div class="form-group">
                            {{ Html::image('','',array('id'=>'showHinhTuyenDung','class'=>'show-image'))}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="row">
                    <div class="form-group">
                        <strong>Nội Dung Tuyển Dụng:</strong>
                        {!! Form::textarea('content',null,array('placeholder' => '','id'=>'content-tuyen-dung','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="row">
                    <div class="line-break"></div>
                    <h3>SEO</h3>
                    <div class="form-group">
                        <strong>Tiêu Đề (title):</strong>
                        {!! Form::text('seo_title',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                    </div>
                    <div class="form-group">
                        <strong>Mô Tả (description):</strong>
                        {!! Form::textarea('seo_description',null,array('placeholder' => '','id'=>'seo-description-tuyen-dung','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                    </div>
                    <div class="form-group">
                        <strong>Kích Hoạt:</strong>
                        <input name="tuyendung_is_active" data-on="Có" data-off="Không" type="checkbox" data-toggle="toggle">
                    </div>
                </div>
            </div>
            <div class="col-md-12" style="text-align:  center;">
                <button id="btnDanhMuc" type="submit" class="btn btn-primary">Tạo Mới Tuyển Dụng</button>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
@stop