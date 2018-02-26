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

                <h2>Lịch Sử</h2>

            </div>


        </div>

    </div>

    @if ($message = Session::get('success'))

        <div class="alert alert-success">

            <p>{{ $message }}</p>

        </div>

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
            <th>Giá Tiền</th>
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
                <td>text</td>
            </tr>
        @endforeach

    </table>

    {!! $accounts->links() !!}

@stop