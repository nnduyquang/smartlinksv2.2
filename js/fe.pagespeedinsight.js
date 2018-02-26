$(document).ready(function () {
    function getBaseURL() {
        var url = location.href;  // entire url including querystring - also: window.location.href;
        var baseURL = url.substring(0, url.indexOf('/', 14));
        if (baseURL.indexOf('http://localhost') != -1) {
            // Base Url for localhost
            var url = location.href;  // window.location.href;
            var pathname = location.pathname;  // window.location.pathname;
            var index1 = url.indexOf(pathname);
            var index2 = url.indexOf("/", index1 + 1);
            var baseLocalUrl = url.substr(0, index2);
            return baseLocalUrl + "/";
        }
        else {
            // Root Url for domain name
            return baseURL + "/";
        }

    }

    var API_KEY = 'AIzaSyBgs4pfBrI0cGQlAmCKqNd-bRcH4zBICHs';

// Specify the URL you want PageSpeed results for here:
    var URL_TO_GET_RESULTS_FOR = 'https://developers.google.com/speed/pagespeed/insights/';
    $('#exTab2').css('display', 'none');
    $('#analyzing').css('display', 'block');
    $('#text-analyzing').children("h1").html('Đang Phân Tích Trên Mobile...');
    var data = new FormData($(this).get(0));
    data.append('website', $("input[name='hd-website-receive']").val());
    data.append('phone_number', $("input[name='hd-phone-number-receive']").val());
    data.append('email_return', $("input[name='hd-email-customer-receive']").val());
    $.ajax({
        type: "POST",
        url: getBaseURL() + "phan-tich-website-mobile",
        dataType: 'json',
        processData: false,
        contentType: false,
        data: data,
        success: function (dataReturnMobile) {
            $('#text-analyzing').children("h1").html('Đang Phân Tích Trên Desktop...');
            if (dataReturnMobile.success) {
                $('#screenshot_mobile').attr('src', dataReturnMobile.data.image_mobile);
                $score_mobile = dataReturnMobile.data.uasbility_score_mobile;
                $('#analyzing_score_mobile').html($score_mobile);
                if (parseInt($score_mobile) >= 85) {
                    $('#analyzing_score_mobile').addClass('good');
                    $('#text-score-mobile').addClass('good');
                    $('#text-score-mobile').html('Tốt');
                    $('#sprite_mobile').addClass('SPRITE_mobile_good');
                    $('#analyzing_text_mobile').html('Rất tốt! Trang này áp dụng hầu hết phương pháp hay nhất về hiệu suất và sẽ cung cấp trải nghiệm người dùng tốt.')
                } else if (parseInt($score_mobile) < 85 && parseInt($score_mobile) >= 60) {
                    $('#analyzing_score_mobile').addClass('needswork');
                    $('#text-score-mobile').html('Cần Cải Thiện Thêm');
                    $('#text-score-mobile').addClass('needswork');
                    $('#sprite_mobile').addClass('SPRITE_mobile_needswork');
                    $('#analyzing_text_mobile').html('Trang này thiếu một số tối ưu hóa hiệu suất thường dùng và có thể dẫn đến trải nghiệm người dùng chậm. Vui lòng liên hệ với chúng tôi để cung cấp giải pháp tối ưu nhất hoàn toàn miễn phí')
                } else {
                    $('#analyzing_score_mobile').addClass('poor');
                    $('#text-score-mobile').html('Tệ');
                    $('#text-score-mobile').addClass('poor');
                    $('#sprite_mobile').addClass('SPRITE_mobile_poor');
                    $('#analyzing_text_mobile').html('Trang này không được tối ưu hóa cho trải nghiệm người dùng chậm. Vui lòng liên hệ với chúng tôi để cung cấp giải pháp tối ưu nhất hoàn toàn miễn phí.');
                }
                $.ajax({
                    type: "POST",
                    url: getBaseURL() + "phan-tich-website-desktop",
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    data: data,
                    success: function (dataReturnDesktop) {
                        if (dataReturnDesktop.success) {
                            $('#screenshot_desktop').attr('src', dataReturnDesktop.data.image_desktop);
                            $score_desktop = dataReturnDesktop.data.uasbility_score_desktop;
                            $('#analyzing_score_desktop').html($score_desktop);
                            $('#analyzing').css('display', 'none');
                            $('#exTab2').css('display', 'block');
                            $('#text-analyzing').children("h1").html('Kết Quả Phân Tích');
                            if (parseInt($score_desktop) >= 85) {
                                $('#analyzing_score_desktop').addClass('good');
                                $('#text-score-desktop').addClass('good');
                                $('#text-score-desktop').html('Tốt');
                                $('#sprite_desktop').addClass('SPRITE_desktop_good');
                                $('#analyzing_text_desktop').html('Rất tốt! Trang này áp dụng hầu hết phương pháp hay nhất về hiệu suất và sẽ cung cấp trải nghiệm người dùng tốt.')
                            } else if (parseInt($score_desktop) < 85 && parseInt($score_desktop) >= 60) {
                                $('#analyzing_score_desktop').addClass('needswork');
                                $('#text-score-desktop').html('Cần Cải Thiện Thêm');
                                $('#text-score-desktop').addClass('needswork');
                                $('#sprite_desktop').addClass('SPRITE_desktop_needswork');
                                $('#analyzing_text_desktop').html('Trang này thiếu một số tối ưu hóa hiệu suất thường dùng và có thể dẫn đến trải nghiệm người dùng chậm.Vui lòng liên hệ với chúng tôi để cung cấp giải pháp tối ưu nhất hoàn toàn miễn phí')
                            } else {
                                $('#analyzing_score_desktop').addClass('poor');
                                $('#text-score-desktop').html('Tệ');
                                $('#text-score-desktop').addClass('poor');
                                $('#sprite_desktop').addClass('SPRITE_desktop_poor');
                                $('#analyzing_text_desktop').html('Trang này không được tối ưu hóa cho trải nghiệm người dùng chậm. Vui lòng liên hệ với chúng tôi để cung cấp giải pháp tối ưu nhất hoàn toàn miễn phí.');
                            }
                        }
                    }
                });
            }
        }
    });
});