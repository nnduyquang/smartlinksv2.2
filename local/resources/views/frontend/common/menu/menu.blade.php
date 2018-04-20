<div id="menu" class="d-none d-md-block">
    <div id="menu_top">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <ul>
                        <li><a href="{{URL::to('/')}}">Trang Chủ</a></li>
                        <li><a href="{{URL::to('trang/gioi-thieu')}}">Giới Thiệu</a></li>
                    </ul>
                </div>
                <div class="col-md-6 text-right">
                    <ul>
                        <li>25 Hoàng Diệu, P.12, Q.4, TPHCM</li>
                        <li>(028) 66 83 00 91</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="menu_bottom">
        <div class="container">
            <div class="row">
                <div class="col justify-content-center align-self-center">
                    <ul class="left-menu">
                        <li class="has-item-down"><a href="{{URL::to('#')}}"
                                                     class="">Dịch Vụ</a>
                            <ul>
                                @foreach($listMenu['categoryService'] as$key=>$data)
                                    <li><a href="{{URL::to('dich-vu/'.$data->path)}}">{{$data->title}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="li-normal"><a href="{{URL::to('tin-tuc')}}"
                                                 class="">Tin Tức</a>
                        <li class="has-item-down"><a href="{{URL::to('#')}}"
                                                     class="">Hỏi Đáp</a>
                            <ul>
                                @foreach($listMenu['categoryFAQ'] as$key=>$data)
                                    <li><a href="{{URL::to('hoi-dap/'.$data->path)}}">{{$data->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-4 text-center">
                    {{ Html::image('images/logo/smartlinks-logo.png','',array('class'=>'img-logo')) }}
                </div>
                <div class="col justify-content-center align-self-center text-right">
                    <ul class="right-menu">
                        <li class="li-normal"><a href="{{URL::to('bao-gia')}}"
                                                 class="">Báo Giá</a>
                        <li class="li-normal"><a href="{{URL::to('tuyen-dung')}}"
                                                 class="">Tuyển Dụng</a>
                        <li class="li-normal"><a href="{{URL::to('trang/lien-he')}}"
                                                 class="">Liên Hệ</a>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>