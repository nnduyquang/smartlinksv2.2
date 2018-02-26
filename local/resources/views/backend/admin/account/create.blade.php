@extends('backend.admin.master')

@section('styles')
@stop

@section('scripts')
@stop

@section('container')

    <div class="row">

        <div class="col-lg-12 margin-tb">

            <div class="pull-left">

                <h2>Thêm Tài Khoản Mới</h2>

            </div>

            <div class="pull-right">

                <a class="btn btn-primary" href="{{ route('account.index') }}"> Back</a>

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

    {!! Form::open(array('route' => 'account.store','method'=>'POST')) !!}

    <div class="row">

        <div class="col-md-8">

            <div class="col-md-12">

                <div class="form-group">
                    <strong>ID Tài Khoản:</strong>
                    {!! Form::text('name', null, array('placeholder' => 'ID Tài Khoản','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Hoạt Động:</strong>
                    <input name="account_is_active" data-on="Đang Hoạt Động" data-off="Không Có Tài Khoản"
                           type="checkbox"
                           data-toggle="toggle">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Loại Tài Khoản:</strong>
                    <input name="is_TD" data-on="Tự Động" data-off="Thủ Công"
                           type="checkbox"
                           data-toggle="toggle">
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Thêm Mới Tài Khoản</button>
        </div>

    </div>

    {!! Form::close() !!}

@stop