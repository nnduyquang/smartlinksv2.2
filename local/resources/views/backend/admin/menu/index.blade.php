@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Quản Lý Menu</h2>
            </div>
            <div class="pull-right">
                @permission(('emp-create'))
                <a class="btn btn-success" href="{{ route('menu.create') }}"> Thêm Menu</a>
                @endpermission
            </div>
        </div>
    </div>
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
    {!! Form::open(array('route' => 'menu.search','method'=>'POST','id'=>'formSearchMenu')) !!}
    <div class="col-md-12">
        <div class="row">
            <div class="form-group">
                <div class="col-md-6">
                    <div class="row">
                        {!! Form::text('txtSearchMenu',null, array('class' => 'form-control','id'=>'txtSearchMenu')) !!}
                    </div>
                </div>
                <div class="col-md-6">
                    {!! Form::button('Tìm Kiếm', array('id' => 'btnSearchMenu','class'=>'btn btn-primary')) !!}
                </div>
            </div>
        </div>
    </div>
    {!! Form::close() !!}
    @if(!empty($keywords))
        <div id="showKeySearchMenu" class="col-md-12">
            <div class="row wrap-search">
                <i class="fa fa-caret-right" aria-hidden="true"></i>{{$keywords}} <a
                        href="{{ route('menu.search') }}">X</a>
            </div>
        </div>
        {{ Form::hidden('hdKeywordMenu', $keywords) }}
    @endif
    <div class="col-md-7">
        <div class="row">
            <table class="table table-bordered">
                <tr>
                    <th width="280px">Tên</th>
                    <th>Path</th>
                    <th>Sắp Xếp</th>
                    <th width="280px">Action</th>
                </tr>
                @foreach($list_menus as $key=>$data)
                    <tr>
                        <td>{{$data->name}}</td>
                        <td>{{$data->path}}</td>
                        <td>{{$data->order}}</td>
                        <td>
                            @permission(('menu-edit'))
                            <a class="btn btn-primary edit-menu" data-id="{{$data->id}}" href="#">Edit</a>
                            @endpermission
                            @permission(('menu-delete'))
                            {!! Form::open(['method' => 'DELETE','style'=>'display:inline']) !!}
                            {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                            {!! Form::close() !!}
                            @endpermission
                        </td>
                    </tr>
                @endforeach
            </table>
            {{--{!! $emps->links() !!}--}}
        </div>
    </div>
    <div class="col-md-5">
        <div id="menu-create" class="col-md-12">
            <div class="row">
                <div class="menu-box-top">
                    <h4>Tạo Mới Menu</h4>
                </div>
                <div class="menu-box-bottom">
                    {!! Form::open(array('route' => 'menu.store','method'=>'POST')) !!}
                    {!! Form::text('name', null, array('placeholder' => 'Tên Menu','class' => 'form-control')) !!}
                    {!! Form::text('order', null, array('placeholder' => 'STT','class' => 'form-control')) !!}
                    <span>Menu Cấp</span>
                    {!! Form::select('parent', $dd_menus, null,array('class' => 'form-control')) !!}

                    <div class="menu-confirm">
                        {!! Form::submit('Thêm Mới',array('class'=>'menu-confirm-ok btn')) !!}
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5"  style="margin-top: 50px;">
        <div id="menu-update" class="col-md-12">

        </div>

    </div>

@stop