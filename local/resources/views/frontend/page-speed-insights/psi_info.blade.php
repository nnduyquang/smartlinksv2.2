{{ Form::hidden('hd-website-receive', $hdWebsiteReceive )}}
{{ Form::hidden('hd-phone-number-receive', $hdPhoneNumberReceive) }}
{{ Form::hidden('hd-email-customer-receive', $hdEmailCustomerReceive) }}

<div id="analyzing">
    <div id="loader-wrapper col-lg-12">
        <div id="loader"></div>
    </div>
</div>
<div id="exTab2" class="container">
    <ul class="nav nav-tabs">
        <li class="active">
            <a href="#1" data-toggle="tab">
                <div class="result-tabs">
                    <div class="ranking" style="user-select: none;">
                        <span id="sprite_mobile" class="icon" style="user-select: none;"></span>
                    </div>
                    <div class="tab-title" style="user-select: none;">Thiết bị di động</div>
                </div>
            </a>
        </li>
        <li><a href="#2" data-toggle="tab">
                <div class="result-tabs">
                    <div class="ranking" style="user-select: none;">
                            <span id="sprite_desktop" class="icon SPRITE_desktop_good"
                                  style="user-select: none;"></span>
                    </div>
                    <div class="tab-title" style="user-select: none;">Máy Tính Để Bàn</div>
                </div>
            </a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="1">
            <div class="col-lg-9">
                <div class="result-analytic-info">
                    <div class="result-group-title">
                        <div class="result-group-title-card"><p id='text-score-mobile'
                                                                class="result-group-title-card-mark">Poor</p>
                            <p class="result-group-title-card-score"><span id="analyzing_score_mobile"
                                                                           class="">44</span> / 100</p></div>
                        <div id="analyzing_text_mobile" class="result-group-title-message">Trang này không được tối
                            ưu hóa và có thể cung cấp
                            trải nghiệm người dùng chậm. Vui lòng tối ưu hóa và áp dụng các đề xuất bên dưới.
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="result-analytic-image">
                    <div class="screenshot mobile">
                        <div class="screenshot-img-container">
                            <img id="screenshot_mobile" src="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="2">
            <div class="col-lg-9">
                <div class="result-analytic-info">
                    <div class="result-group-title">
                        <div class="result-group-title-card"><p id='text-score-desktop'
                                                                class="result-group-title-card-mark">Poor</p>
                            <p class="result-group-title-card-score"><span id="analyzing_score_desktop"
                                                                           class="">44</span> / 100</p></div>
                        <div id="analyzing_text_desktop" class="result-group-title-message">Trang này không được tối
                            ưu hóa và có thể cung cấp
                            trải nghiệm người dùng chậm. Vui lòng tối ưu hóa và áp dụng các đề xuất bên dưới.
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="result-analytic-image">
                    <div class="screenshot desktop">
                        <div class="screenshot-img-container">
                            <img id="screenshot_desktop" src="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@include('frontend.common.HinhThucVaGia')
@include('frontend.common.LienHeBaoGia')