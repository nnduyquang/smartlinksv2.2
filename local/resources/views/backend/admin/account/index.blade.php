@extends('backend.admin.master')

@section('styles')

    {{ Html::style('css/be.emp.css') }}

@stop

@section('scripts')

    {{ Html::script('js/be.emp.js',array('async' => 'async') ) }}

@stop

@section('container')

    <div class="row">

        <div class="col-lg-12 margin-tb">

            <div class="pull-left">

                <h2>Quản Lý Tài Khoản</h2>

            </div>

            <div class="pull-right">

                {{--@permission(('account-create'))--}}

                <a class="btn btn-success" href="{{ route('account.create') }}"> Thêm Tài Khoản</a>

                {{--@endpermission--}}

            </div>

        </div>

    </div>

    @if ($message = Session::get('success'))

        <div class="alert alert-success">

            <p>{{ $message }}</p>

        </div>

    @endif

    {!! Form::open(array('route' => 'account.search','method'=>'POST','id'=>'formSearchAccount')) !!}

    <div class="col-md-12">

        <div class="row">

            <div class="form-group">

                <div class="col-md-6">

                    <div class="row">

                        {!! Form::text('txtSearchAccount',null, array('class' => 'form-control','id'=>'txtSearchAccount')) !!}

                    </div>

                </div>

                <div class="col-md-6">

                    {!! Form::button('Tìm Kiếm', array('id' => 'btnSearchAccount','class'=>'btn btn-primary')) !!}

                </div>

            </div>

        </div>

    </div>

    {!! Form::close() !!}

    @if(!empty($keywords))

        <div id="showKeySearchAccount" class="col-md-12">

            <div class="row wrap-search">

                <i class="fa fa-caret-right" aria-hidden="true"></i>{{$keywords}} <a

                        href="{{ route('account.search') }}">X</a>

            </div>

        </div>

        {{ Form::hidden('hdKeywordAccount', $keywords) }}

    @endif

    <table class="table table-bordered">

        <tr>

            <th>TT</th>
            <th>ID Account</th>
            <th>Tên Chiến Dịch</th>
            <th>Website</th>
            <th>Tình Trạng Chiến Dịch</th>
            <th>Ngày Ngày Bắt Đầu</th>
            <th>Ngày Kết Thúc</th>
            <th>Danh Sách Từ Khóa</th>
            <th width="280px">Action</th>

        </tr>

        {{--@foreach ($accounts as $key => $data)--}}

            <tr>

                {{--<td>{{ ++$i }}</td>--}}
                <td>1</td>
                <td>984-733-3144</td>
                <td>Máy Ấp Trứng</td>
                <td>www.mayaptrung.com</td>
                <td>Đang Chạy</td>
                <td>text</td>
                <td>text</td>
                <td>text</td>
                <td>

                    {{--@permission(('account-edit'))--}}

                    {{--<a class="btn btn-primary" href="{{ route('account.edit',$data->id) }}">Edit</a>--}}
                    <a class="btn btn-primary" href="{{ route('account.edit',1) }}">Cập Nhật Tài Khoản</a>

                    {{--@endpermission--}}
                    <a class="btn btn-primary" href="#">Xem Lịch Sử Chiến Dịch</a>

                    {{--@permission(('account-delete'))--}}

                    {{--{!! Form::open(['method' => 'DELETE','route' => ['emp.destroy', $data->id],'style'=>'display:inline']) !!}--}}

                    {{--{!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}--}}

                    {{--{!! Form::close() !!}--}}

                    {{--@endpermission--}}

                </td>

            </tr>

        {{--@endforeach--}}

    </table>

    {{--{!! $accounts->links() !!}--}}

@stop