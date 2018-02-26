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

    {!! Form::open(array('route' => 'campaign.store','method'=>'POST')) !!}

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
                    <strong>Tên Chiến Dịch:</strong>
                    {!! Form::text('name', null, array('placeholder' => 'Tên Chiến Dịch','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Website:</strong>
                    {!! Form::text('website', null, array('placeholder' => 'Website','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Ngày Bắt Đầu Chạy:</strong>
                    {!! Form::text('date_start', null, array('placeholder' => 'Website','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Ngày Bắt Đầu Chạy:</strong>
                    {!! Form::text('date_end', null, array('placeholder' => 'Website','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Giá Tiền Chạy:</strong>
                    {!! Form::text('price_active', null, array('placeholder' => 'Website','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Giá Tiền Thực Tế Chạy:</strong>
                    {!! Form::text('price_final', null, array('placeholder' => 'Website','class' => 'form-control')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Từ Khóa:</strong>
                    {!! Form::textarea('list_keywords',null, array('placeholder' => '','id'=>'list-keyword','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Hoạt Động:</strong>
                    <input name="campaign_is_active" data-on="Đang Hoạt Động" data-off="Chiến Dịch Kết Thúc"
                           type="checkbox"
                           data-toggle="toggle">
                </div>
            </div>
            {{--<div class="col-md-12">--}}
                {{--<div class="form-group">--}}
                    {{--<strong>Tình Trang:</strong>--}}
                    {{--<input name="campaign_is_pause" data-on="Tạm Dừng" data-off="Đang Chạy"--}}
                           {{--type="checkbox"--}}
                           {{--data-toggle="toggle">--}}
                {{--</div>--}}
            {{--</div>--}}
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Thêm Mới Chiến Dịch</button>
        </div>
    </div>

    {!! Form::close() !!}

@stop