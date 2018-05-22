<div id="footer">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-4 footer-border-right pr-0 pt-5">
                <div class="box-footer">
                    <h3>About Us</h3>
                    <div class="footer-text">SmartLinks mang đến những thành công không chỉ ở việc làm gia tăng được doanh số bán hàng, xây dựng và quảng bá thương hiệu, hình ảnh doanh nghiệp mà còn giúp doanh nghiệp khai thác triệt để khách hàng tiềm năng của mình...


                    </div>
                </div>
                <div class="box-footer">
                    <ul class="footer-social">
                        <li>
                            <a href="#">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-google-plus-g"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="copy-right">
                    <p>Copy Rights <i class="far fa-copyright"></i> 2017 Max All Rights Reserved</p>
                </div>
            </div>
            <div class="col-md-4 pr-0 pt-5">
                <div class="box-footer no-border pl-5">
                    <h3>Services</h3>
                    <ul class="services">
                        @foreach($listMenu['categoryService'] as$key=>$data)
                            <li><a href="{{URL::to('dich-vu/'.$data->path)}}"><i class="fas fa-angle-right"></i>{{$data->title}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-md-4 pr-0 pt-5">
                <div class="box-footer pl-5">
                    <h3>Contact Us</h3>
                    <ul class="contact">
                        <li>
                            <a href=""><i class="far fa-building"></i> 25 Hoàng Diệu, P.12, Q.4, TPCHM</a>
                        </li>
                        <li>
                            <a href=""><i class="fas fa-phone-square"></i> (028) 66830091 - 0914.348.131</a>
                        </li>
                        <li>
                            <a href=""><i class="far fa-envelope"></i> info@smartlinks.vn</a>
                        </li>

                    </ul>
                </div>
                <div class="logo">
                    {{ Html::image('images/logo/smartlinks-logo-footer.png','',array('class'=>'style-member')) }}
                </div>
            </div>
        </div>
    </div>
</div>