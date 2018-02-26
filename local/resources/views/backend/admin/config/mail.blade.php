@extends('backend.admin.master')
@section('scripts')
    {{ Html::script('js/be.config.email.js',array('async' => 'async') ) }}
@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Cấu Hình Email</h2>
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
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    {!! Form::open(array('route' => 'config.email.store','method'=>'POST')) !!}
    <div class="row">
        @foreach($cauhinhs as $key=>$cauhinh)
            @if($cauhinh->name=='email-receive')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>EMail Nhận Báo Giá:</strong>
                        {!! Form::text('email-receive', $cauhinh->content, array('placeholder' => '','class' => 'form-control')) !!}
                        {{ Form::hidden('hd-email-receive', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='email-sender-subject')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>Tiêu Đề Email Khách Hàng Nhận Phản Hồi:</strong>
                        {!! Form::text('email-sender-subject', $cauhinh->content, array('placeholder' => '','class' => 'form-control')) !!}
                        {{ Form::hidden('hd-email-sender-subject', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='email-sender-from')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>From Email Khách Hàng Nhận Phản Hồi:</strong>
                        {!! Form::text('email-sender-from', $cauhinh->content, array('placeholder' => '','class' => 'form-control')) !!}
                        {{ Form::hidden('hd-email-sender-from', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='email-receive-subject')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>Tiêu Đề Email Công Ty Nhận Báo Giá:</strong>
                        {!! Form::text('email-receive-subject',  $cauhinh->content, array('placeholder' => '','class' => 'form-control')) !!}
                        {{ Form::hidden('hd-email-receive-subject', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='email-receive-from')
                <div class="col-md-12">
                    <div class="form-group">
                        <strong>From Email Công Ty Nhận Báo Giá:</strong>
                        {!! Form::text('email-receive-from',  $cauhinh->content, array('placeholder' => '','class' => 'form-control')) !!}
                        {{ Form::hidden('hd-email-receive-from', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='email-sender-content')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Nội Dung Gửi Cho Khách Hàng:</strong>
                        {!! Form::textarea('email-sender-content',$cauhinh->content, array('placeholder' => 'Nội Dung','id'=>'email-sender-content','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-email-sender-content', $cauhinh->content) }}
                    </div>
                </div>
            @endif
            @if($cauhinh->name=='email-signatures')
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Chữ Ký:</strong>
                        {!! Form::textarea('email-signatures', $cauhinh->content, array('placeholder' => 'Nội Dung','id'=>'email-signatures','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                        {{ Form::hidden('hd-email-signatures', $cauhinh->content) }}
                    </div>
                </div>
            @endif
        @endforeach
        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Lưu Cấu Hình</button>
        </div>

    </div>
    {!! Form::close() !!}
@stop