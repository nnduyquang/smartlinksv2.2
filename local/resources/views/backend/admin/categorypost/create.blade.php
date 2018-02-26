@extends('backend.admin.master')
@section('styles')
@stop
@section('scripts')
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Tạo Mới Chuyên Mục</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('categorypost.index') }}"> Back</a>
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
    {!! Form::open(array('route' => 'categorypost.store','method'=>'POST')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <strong>Tên Chuyên Mục:</strong>
                            {!! Form::text('name',null, array('placeholder' => 'Tên','class' => 'form-control')) !!}
                        </div>
                        <div class="form-group">
                            <strong>Menu Cấp</strong>
                            {!! Form::select('parent',$dd_categorie_posts, null,array('class' => 'form-control')) !!}
                        </div>
                        <div class="form-group">
                            <strong>Thứ Tự:</strong>
                            {!! Form::text('order',null, array('placeholder' => 'Thứ Tự','class' => 'form-control')) !!}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12" style="text-align:  center;">
                <button id="btnDanhMuc" type="submit" class="btn btn-primary">Tạo Mới Chuyên Mục</button>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
@stop