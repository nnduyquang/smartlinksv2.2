$('.edit-menu').click(function () {
    $('#menu-update').css('display','block');

    var id = $(this).attr('data-id');
    $.ajax({
        type: "GET",
        url: getBaseURL() + "sml_admin/menu/" + id + "/edit",
        dataType: 'json',
        data: {
            '_token': token,
        },
        success: function (data) {
            if (data.success) {
                var options = '';
                var list_dd = data.dd_menus;
                for (i = 0; i < list_dd.length; i++) {
                    if (list_dd[i]['index'] == data.menu.parent_id)
                        options += '<option value="' + list_dd[i]['index'] + '" selected>' + list_dd[i]['value'] + '</option>';
                    else
                        options += '<option value="' + list_dd[i]['index'] + '">' + list_dd[i]['value'] + '</option>';
                }
                var form = '<div class="row">'
                    + '<div class="menu-box-top">'
                    + '<h4>Cập Nhật Menu</h4>'
                    + '</div>'
                    + '<div class="menu-box-bottom">'
                    + '<form id="menu-update-form" data-id='+data.menu.id+' method="POST" action="' + getBaseURL() + 'sml_admin/menu/' + data.menu.id + '" accept-charset="UTF-8">'
                    + '<input name="_method" type="hidden" value="PATCH">'
                    + '<input name="_token" type="hidden" value="' + token + '">'
                    + '<input placeholder="Tên Menu" value="' + data.menu.name + '" class="form-control" name="name" type="text">'
                    + '<input placeholder="STT" value="' + data.menu.order + '" class="form-control" name="order" type="text">'
                    + '<span>Menu Cấp Cha</span><span class="show-error">Lựa Chọn Không Hợp Lệ</span>'
                    + '<select class="form-control" name="parent">'
                    + options
                    + '</select>'
                    + '<div class="menu-confirm">'
                    + '<input class="menu-confirm-ok btn confirm-update" type="button" value="CẬP NHẬT">'
                    + '</div>'
                    + '</form>'
                    + '</div>'
                    + '</div>';
                // alert(data.menu.name);
                $('#menu-update').html(form);
                $('.confirm-update').click(function(){
                    $('.show-error').css('display','none');
                    $('.show-error').removeClass('blink_me');
                    var $form=$('#menu-update-form');
                    var id = $form.attr('data-id');
                    var parent_id=$('#menu-update-form select[name="parent"]').val();
                    if(parent_id==id){
                        $('.show-error').css('display','block');
                        $('.show-error').addClass('blink_me')
                    }else{
                        $form.submit();
                    }
                });
            } else {
            }
        },
        error: function (data) {
            alert('zo error');
        }
    });
});
