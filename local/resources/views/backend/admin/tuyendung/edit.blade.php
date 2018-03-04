@extends('backend.admin.master')
@section('styles')
@stop
@section('scripts')
@stop
@section('container')

    <div class="col-lg-12">
        <div class="row">
            <div class="col-md-8">
                <h2>Cập Nhật Tuyển Dụng</h2>
            </div>
            <div class="col-md-4 text-right">
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
    {!! Form::model($tuyendung,array('route' => ['tuyendung.update',$tuyendung->id],'method'=>'PATCH')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>Tên Trang:</strong>
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
                            {!! Form::text('image', url('/').'/'.$tuyendung->image, array('class' => 'form-control','id'=>'pathImageTuyenDung')) !!}
                            <br>
                            {!! Form::button('Tìm', array('id' => 'btnBrowseImageTuyenDung','class'=>'btn btn-primary')) !!}
                        </div>
                        <div class="form-group">
                            {{ Html::image($tuyendung->image,'',array('id'=>'showHinhTuyenDung','class'=>'show-image'))}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">

                <strong>Nội Dung Tuyển Dụng:</strong>
                {!! Form::textarea('content',null,array('placeholder' => '','id'=>'content-tuyen-dung','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                <hr>
            </div>
            <div class="col-md-12">

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
                    <input {{$tuyendung->isActive==1?'checked':''}}  name="tuyendung_is_active" data-on="Có"
                           data-off="Không"
                           type="checkbox" data-toggle="toggle">
                </div>

            </div>

            <div class="col-md-12" style="text-align:  center;">
                <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Tuyển Dụng</button>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
@stop