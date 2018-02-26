@extends('backend.admin.master')

@section('styles')
@stop

@section('scripts')
@stop

@section('container')

    <div class="row">

        <div class="col-lg-12 margin-tb">

            <div class="pull-left">

                <h2>Quản Lý Chiến Dịch</h2>

            </div>

            <div class="pull-right">

                @permission(('account-create'))

                <a class="btn btn-success" href="{{ route('campaign.create') }}"> Thêm Chiến Dịch</a>

                @endpermission

            </div>

        </div>

    </div>

    @if ($message = Session::get('success'))

        <div class="alert alert-success">

            <p>{{ $message }}</p>

        </div>

    @endif

    {!! Form::open(array('route' => 'campaign.search','method'=>'POST','id'=>'formSearchCampaign')) !!}

    <div class="col-md-12">

        <div class="row">

            <div class="form-group">

                <div class="col-md-6">

                    <div class="row">

                        {!! Form::text('txtSearchCampaign',null, array('class' => 'form-control','id'=>'txtSearchCampaign')) !!}

                    </div>

                </div>

                <div class="col-md-6">

                    {!! Form::button('Tìm Kiếm', array('id' => 'btnSearchCampaign','class'=>'btn btn-primary')) !!}

                </div>

            </div>

        </div>

    </div>

    {!! Form::close() !!}

    @if(!empty($keywords))

        <div id="showKeySearchCampaign" class="col-md-12">

            <div class="row wrap-search">

                <i class="fa fa-caret-right" aria-hidden="true"></i>{{$keywords}} <a

                        href="{{ route('Campaign.search') }}">X</a>

            </div>

        </div>

        {{ Form::hidden('hdKeywordCampaign', $keywords) }}

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
            <th width="280px">Action</th>

        </tr>

        @foreach ($accounts as $key => $data)

            <tr>

                {{--<td>{{ ++$i }}</td>--}}
                <td>i</td>

                <td>ID Account</td>

                <td>text</td>

                <td>text</td>

                <td>text</td>

                <td>text</td>

                <td>text</td>

                <td>text</td>

                <td>

                    @permission(('account-edit'))

                    <a class="btn btn-primary" href="{{ route('campaign.edit',$data->id) }}">Edit</a>

                    @endpermission
                    <a class="btn btn-primary" href="#">Xem Lịch Sử Chiến Dịch</a>

                    {{--@permission(('account-delete'))--}}

                    {{--{!! Form::open(['method' => 'DELETE','route' => ['emp.destroy', $data->id],'style'=>'display:inline']) !!}--}}

                    {{--{!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}--}}

                    {{--{!! Form::close() !!}--}}

                    {{--@endpermission--}}

                </td>

            </tr>

        @endforeach

    </table>

    {!! $accounts->links() !!}

@stop