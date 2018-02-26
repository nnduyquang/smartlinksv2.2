@extends('frontend.demo.xulynuocthai.master')
@section('slider')
    @include('frontend.demo.xulynuocthai.slider')
@stop
@section('container')
    <div id="xlnt-01" class="col-md-12">
        <div class="row">
            <div class="container">
                <div id="xlnt-01-left" class="col-md-4">
                    <h2 class="xlnt-01-left-header">Danh Mục Sản Phẩm</h2>
                    <ul>
                        <li><a href="#">Tư Vấn Môi Trường</a></li>
                        <li><a href="#">Xử Lý Nước Thải</a></li>
                        <li><a href="#">Xử Lý Nước Cấp</a></li>
                        <li><a href="#">Xử Lý Khí Thải</a></li>
                        <li><a href="#">Xử Lý Mùi</a></li>
                        <li><a href="#">Vật Tư - Thiết Bị</a></li>
                        <li><a href="#">Vật Liệu Lọc</a></li>
                        <li><a href="#">Hóa Chất Xử Lý Nước</a></li>
                        <li><a href="#">Máy Ozone</a></li>
                    </ul>
                </div>
                <div id="xlnt-01-right" class="col-md-8">
                    <div class="col-md-4">
                        {{ Html::image('images/demo/xulynuocthai/tu-van-moi-truong-1472529448_321x384.jpg','',array('class'=>'')) }}
                    </div>
                    <div class="col-md-8">
                        <h2 class="xlnt-01-right-header">Giới Thiệu</h2>
                        <div class="xlnt-01-right-info">
                            Được xây dựng và phát triển bằng tâm huyết của một đội ngũ những chuyên gia, những kỹ sư trẻ
                            tuổi và tràn đầy nhiệt huyết, ngay từ những ngày đầu thành lập, tôn chỉ hoạt động của Hợp
                            Nhất đã lấy chất lượng dịch vụ và sự hài lòng của quý khách hàng làm kim chỉ nam, lấy sự
                            Trung thực với khách hàng là nền tảng vững bền cho sự phát triển của Công ty trong hiện tại
                            và cả tương lai. Sự hài lòng của Quý khách hàng về chất lượng dịch vụ của Hợp Nhất là nguồn
                            động viên to lớn để toàn thể cán bộ, kỹ sư và đội ngũ nhân viên công ty phấn đấu nỗ lực hơn
                            nữa để xứng đáng với niềm tin của quý khách hàng Công ty Cổ phần Hợp Nhất tin tưởng và cam
                            kết đem đến giá trị tốt nhất cho quý khách hàng.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="xlnt-02 col-md-12">
        <h2 class="xlnt-02-header"><a href="#">Tư Vấn Môi Trường</a></h2>
        <div class="xlnt-02-content" class="col-md-12">
            <div class="row">
                <div class="container">
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/de-an-bvmt-chi-tiet-1477041166_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Cam Kết Bảo Vệ Môi </h2>
                            </h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/11111-1510297299_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Đánh Giá Tác Động Môi Trường</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Đề Án Bảo Vệ Môi Trường</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/xingiayphepmoitruong-1472485841_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Giám Sát Môi Trường</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/xingiayphepmoitruong-1472485841_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Giấy Phép Xả Thải Vào Nguồn Nước</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/xingiayphepmoitruong-1472485841_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Sổ Chủ Nguồn Thải</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="xlnt-02 col-md-12">
        <h2 class="xlnt-02-header"><a href="#">Xử Lý Nước Thải</a></h2>
        <div class="xlnt-02-content" class="col-md-12">
            <div class="row">
                <div class="container">
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/de-an-bvmt-chi-tiet-1477041166_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Xử Lý Nước Thải Công Nghiệp</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/11111-1510297299_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Xử Lý Nước Thải Sinh Hoạt</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Xử Lý Nước Thải Y Tế</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Xử Lý Nước Thải Dệt Nhuộm</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="xlnt-02 col-md-12">
        <h2 class="xlnt-02-header"><a href="#">Xử Lý Nước Cấp</a></h2>
        <div class="xlnt-02-content" class="col-md-12">
            <div class="row">
                <div class="container">
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/de-an-bvmt-chi-tiet-1477041166_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Lọc Nước Sinh Hoạt Hộ Gia Đình</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/11111-1510297299_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Xử Lý Nước Cấp Công Nghiệp</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Xử Lý Nước Tinh Khiết - Đóng Bình</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="xlnt-02 col-md-12">
        <h2 class="xlnt-02-header"><a href="#">Vật Tư - Thiết Bị</a></h2>
        <div class="xlnt-02-content" class="col-md-12">
            <div class="row">
                <div class="container">
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/de-an-bvmt-chi-tiet-1477041166_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Bơm Nước, Bơm Định Lượng, Máy Thổi Khí Các Loại</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/11111-1510297299_270x170.jpg','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Đĩa Phân Phối Khí</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Giá Thể Sinh Học, Giá Thể Đệm Dạng Cầu, Dạng Cước, Sợi, Tổ Ong</h2>
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            <h2 class="xlnt-02-item-title">Màng Lọc MBR (Trung Quốc, Malaysia, Nhật)</h2>
                        </a>
                    </div>
                    {{--<div class="col-md-3 xlnt-02-one-item">--}}
                        {{--<a href="#">--}}
                            {{--{{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}--}}
                            {{--<h2 class="xlnt-02-item-title">Vật Tư Thiết Bị Xử Lý Nước</h2>--}}
                        {{--</a>--}}
                    {{--</div>--}}
                </div>
            </div>
        </div>
    </div>
    <div id="xlnt-03" class="col-md-12">
        <div class="row">
            {{ Html::image('images/demo/xulynuocthai/timthumb.png','',array('class'=>'')) }}
        </div>
    </div>
    <div class="xlnt-02 col-md-12">
        <h2 class="xlnt-02-header"><a href="#">Dự Án Đã Thực Hiện</a></h2>
        <div class="xlnt-02-content" class="col-md-12">
            <div class="row">
                <div class="container">
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/de-an-bvmt-chi-tiet-1477041166_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Bơm Nước, Bơm D(ịnh Lượng, Máy Thổi Khí Các Loại</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/11111-1510297299_270x170.jpg','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Đĩa Phân Phối Khí</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Giá Thể Sinh Học, Giá Thể Đệm Dạng Cầu, Dạng Cước, Sợi, Tổ Ong</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Màng Lọc MBR (Trung Quốc, Malaysia, Nhật)</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Vật Tư Thiết BỊ Xử Lý Nước</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Vật Tư Thiết BỊ Xử Lý Nước</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Vật Tư Thiết BỊ Xử Lý Nước</h2>--}}
                        </a>
                    </div>
                    <div class="col-md-3 xlnt-02-one-item">
                        <a href="#">
                            {{ Html::image('images/demo/xulynuocthai/giayphepxathaivaonguonnuoc-1472485655_270x170.png','',array('class'=>'')) }}
                            {{--<h2 class="xlnt-02-item-title">Vật Tư Thiết BỊ Xử Lý Nước</h2>--}}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="xlnt-04" class="col-md-12">
        <div class="row">
            <div class="container">
                <div id="xlnt-04-left" class="col-md-8">
                    <div class="col-md-12">
                        <div class="row">
                            <h2 class="xlnt-04-title-left">Tin Tức - Sự Kiện</h2>
                            <h2 class="xlnt-04-title-right"><a href="#">Xem Tất Cả</a></h2>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <a class="xlnt-04-spotlight" href="#">
                                {{ Html::image('images/demo/xulynuocthai/ngheu-chet-hang-loat-o-ha-tinh-1475291455_350x188.png','',array('class'=>'')) }}
                                <h2>Bồi Thường Thiệt Hại Trong Sự Cố Formosa</h2>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="xlnt-04-one-item col-md-12">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="row">
                                            {{ Html::image('images/demo/xulynuocthai/environmentday-1472487640_350x188.jpg','',array('class'=>'')) }}
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h2>Báo Cáo Giám Sát Môi Trường</h2>
                                        <div class="xlnt-04-info">
                                            Báo cáo giám sát môi trường là báo cáo kết quả quan trắc số liệu của mỗi...
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="xlnt-04-one-item col-md-12">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="row">
                                            {{ Html::image('images/demo/xulynuocthai/environmentday-1472487640_350x188.jpg','',array('class'=>'')) }}
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h2>Báo Cáo Giám Sát Môi Trường</h2>
                                        <div class="xlnt-04-info">
                                            Báo cáo giám sát môi trường là báo cáo kết quả quan trắc số liệu của mỗi...
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="xlnt-04-one-item col-md-12">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="row">
                                            {{ Html::image('images/demo/xulynuocthai/environmentday-1472487640_350x188.jpg','',array('class'=>'')) }}
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h2>Báo Cáo Giám Sát Môi Trường</h2>
                                        <div class="xlnt-04-info">
                                            Báo cáo giám sát môi trường là báo cáo kết quả quan trắc số liệu của mỗi...
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="xlnt-04-one-item col-md-12">
                            <a href="#">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="row">
                                            {{ Html::image('images/demo/xulynuocthai/environmentday-1472487640_350x188.jpg','',array('class'=>'')) }}
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h2>Báo Cáo Giám Sát Môi Trường</h2>
                                        <div class="xlnt-04-info">
                                            Báo cáo giám sát môi trường là báo cáo kết quả quan trắc số liệu của mỗi...
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div id="xlnt-04-right" class="col-md-4">
                    <div class="row">
                        <h2 class="xlnt-04-title">Video - Clip</h2>
                        <div class="col-md-12">
                            <div class="row">
                                <iframe width="100%" height="250" src="https://www.youtube.com/embed/U9B6rt42X2Y"
                                        frameborder="0" gesture="media" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="xlnt-05" class="col-md-12">
        <div class="row">
            {{ Html::image('images/demo/xulynuocthai/timthumb_1.png','',array('class'=>'')) }}
        </div>
    </div>
    <div id="xlnt-06" class="col-md-12">
        <div class="row">
            <div class="container">
                <div class="owl-carousel owl-theme">
                    <div> {{ Html::image('images/demo/xulynuocthai/batico_logo.jpg','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div>{{ Html::image('images/demo/xulynuocthai/gilimex_logo.jpg','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/imexpharm_logo.jpg','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/mailinh-logo.png','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/orthoLite_logo.jpg','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/vietsin_logo.png','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/sapuwa_logo.jpg','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/phuocthanh_logo.jpg','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                    <div> {{ Html::image('images/demo/xulynuocthai/hadong_logo.png','',array('class'=>'img-tk-list','data-image'=>'zoom'))}} </div>
                </div>
            </div>
        </div>
    </div>
@stop