<div id="menu2" class="d-none d-lg-block animated show-on-slide">
    {{--<div id="menu_top">--}}
    {{--<div class="container">--}}
    {{--<div class="row">--}}
    {{--<div class="col-md-6">--}}
    {{--<ul>--}}
    {{--<li><a href="{{URL::to('/')}}">Trang Chủ</a></li>--}}
    {{--<li><a href="{{URL::to('trang/gioi-thieu')}}">Giới Thiệu</a></li>--}}
    {{--</ul>--}}
    {{--</div>--}}
    {{--<div class="col-md-6 text-right">--}}
    {{--<ul>--}}
    {{--<li>25 Hoàng Diệu, P.12, Q.4, TPHCM</li>--}}
    {{--<li>(028) 66 83 00 91</li>--}}
    {{--</ul>--}}
    {{--</div>--}}
    {{--</div>--}}
    {{--</div>--}}
    {{--</div>--}}
    <div id="menu_bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="{{URL::to('/')}}">{{ Html::image('images/logo/smartlinks-logo.png','',array('class'=>'img-logo')) }}</a>
                    {{--<h1><a style="color: white;font-weight: bold;font-size: 30px;letter-spacing: 5px" href="{{URL::to('/')}}">SMART<span style="color:#00AFEF ">LINKS</span></a> </h1>--}}
                </div>
                <div class="col-md-9 text-right justify-content-center align-self-center">
                    <ul class="main-menu">
                        <li class="li-normal"><a href="{{URL::to('trang/gioi-thieu')}}">Giới Thiệu</a></li>
                        <li class="has-item-down"><a href="#">Dịch Vụ</a>
                            <ul>
                                @foreach($listMenu['categoryService'] as$key=>$data)
                                    <li><a href="{{URL::to('dich-vu/'.$data->path)}}">{{$data->title}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="has-item-down"><a href="#">Hỏi Đáp</a>
                            <ul>
                                @foreach($listMenu['categoryFAQ'] as$key=>$data)
                                    <li><a href="{{URL::to('hoi-dap/'.$data->path)}}">{{$data->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        {{--<li class="li-normal"><a href="#">Dự Án</a></li>--}}
                        <li class="li-normal"><a href="{{URL::to('bao-gia')}}"
                                                 class="">Báo Giá</a></li>
                        <li class="li-normal"><a href="{{URL::to('tin-tuc')}}"
                                                 class="">Tin Tức</a></li>
                        <li class="li-normal"><a href="{{URL::to('tuyen-dung')}}"
                                                 class="">Tuyển Dụng</a></li>
                        <li class="li-normal"><a href="{{URL::to('trang/lien-he')}}"
                                                 class="">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>