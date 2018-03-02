var token = $('meta[name="csrf-token"]').attr('content');function getBaseURL() {    var url = location.href;  // entire url including querystring - also: window.location.href;    var baseURL = url.substring(0, url.indexOf('/', 14));    if (baseURL.indexOf('http://localhost') != -1) {        // Base Url for localhost        var url = location.href;  // window.location.href;        var pathname = location.pathname;  // window.location.pathname;        var index1 = url.indexOf(pathname);        var index2 = url.indexOf("/", index1 + 1);        var baseLocalUrl = url.substr(0, index2);        return baseLocalUrl + "/";    }    else {        // Root Url for domain name        return baseURL + "/";    }}function selectFileWithKCFinder(elementPath, showHinhId) {    window.KCFinder = {        callBack: function (url) {            var output = document.getElementById(elementPath);            output.value = url;            $('#' + showHinhId).show();            $('#' + showHinhId).fadeIn("fast").attr('src', url);            window.KCFinder = null;        }    };    window.open(getBaseURL() + 'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +        'resizable=1, scrollbars=0, width=800, height=600'    );    if ($('#' + elementPath).val() == '')        $('#' + showHinhId).hide();    else        $('#' + showHinhId).show();}function integratedCKEDITOR(elementID, height) {    if ($('#' + elementID).length) {        var editor1=CKEDITOR.replace(elementID, {            height: height,            language: 'vi',            format_tags: 'p;h1;h2;h3;pre',            filebrowserBrowseUrl: '../../../js/kcfinder/browse.php?type=files',            filebrowserImageBrowseUrl: '../../../js/kcfinder/browse.php?type=images',            filebrowserFlashBrowseUrl: '../../../js/kcfinder/browse.php?type=flash',            filebrowserUploadUrl: '../../../js/kcfinder/upload.php?type=files',            filebrowserImageUploadUrl: '../../../js/kcfinder/upload.php?type=images',            filebrowserFlashUploadUrl: '../../../js/kcfinder/upload.php?type=flash',            extraAllowedContent : 'div',        });        editor1.on('instanceReady', function() {            // Output self-closing tags the HTML4 way, like <br>.            this.dataProcessor.writer.selfClosingEnd = '>';            // Use line breaks for block elements, tables, and lists.            var dtd = CKEDITOR.dtd;            for ( var e in CKEDITOR.tools.extend( {}, dtd.$nonBodyContent, dtd.$block, dtd.$listItem, dtd.$tableContent ) ) {                this.dataProcessor.writer.setRules( e, {                    indent: true,                    breakBeforeOpen: true,                    breakAfterOpen: true,                    breakBeforeClose: true,                    breakAfterClose: true                });            }            // Start in source mode.            // this.setMode('source');        });    }}function integrateSearch(elementID,formID){    $('#'+elementID).click(function () {        if ($('#txtSearch').val().trim() == '')            return;        if ($('#txtSearch').val().trim().replace(/ +(?= )/g, '') == $("input[name='hdKeyword']").val())            return;        $('#'+formID).submit();    });}function isEmpty(val) {    return ((val !== '') && (val !== undefined) && (val.length > 0) && (val !== null));}
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

if ($('#btnBrowseImageSlider').length) {    var button1 = document.getElementById('btnBrowseImageSlider');    button1.onclick = function () {        selectFileWithCKFinder('path');    }};if ($('#path').val() == '')    $('#showSliderImage').hide();else    $('#showSliderImage').show();function selectFileWithCKFinder(elementId) {    CKFinder.popup({        chooseFiles: true,        width: 800,        height: 600,        onInit: function (finder) {            finder.on('files:choose', function (evt) {                var file = evt.data.files.first();                var output = document.getElementById(elementId);                output.value = file.getUrl();                $('#showSliderImage').show();                $('#showSliderImage').fadeIn("fast").attr('src', file.getUrl());            });            finder.on('file:choose:resizedImage', function (evt) {                var output = document.getElementById(elementId);                output.value = evt.data.resizedUrl;                $('#showSliderImage').show();                $('#showSliderImage').fadeIn("fast").attr('src', file.getUrl());            });        }    });}
integratedCKEDITOR('emp-note',800);if ($('#btnBrowseImageEmp').length) {    var button1 = document.getElementById('btnBrowseImageEmp');    button1.onclick = function () {        selectFileWithCKFinder('path');    }};if ($('#path').val() == '')    $('#showEmpImage').hide();else    $('#showEmpImage').show();function selectFileWithCKFinder(elementId) {    window.KCFinder = {        callBack: function (url) {            var output = document.getElementById(elementId);            output.value = url;            $('#showEmpImage').show();            $('#showEmpImage').fadeIn("fast").attr('src', url);            // alert(url);            // field.value = url;            window.KCFinder = null;        }    };    window.open(getBaseURL()+'js/kcfinder/browse.php?type=images', 'kcfinder_textbox',        'status=0, toolbar=0, location=0, menubar=0, directories=0, ' +        'resizable=1, scrollbars=0, width=800, height=600'    );}integrateSearch('btnSearchEmp','formSearchEmp');
integratedCKEDITOR('description-page',height=200);
integratedCKEDITOR('content-page',height=800);
integratedCKEDITOR('seo-description-page',height=200);
if ($('#btnBrowseImagePage').length) {
    var button1 = document.getElementById('btnBrowseImagePage');
    button1.onclick = function () {
        selectFileWithKCFinder('pathImagePage','showHinhPage');
    }
}
if ($('#email-sender-content').length) {
    CKEDITOR.replace('email-sender-content', {
        height: 200,
        language: 'vi',
        format_tags: 'p;h1;h2;h3;pre',
        filebrowserImageBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=images',
        filebrowserFlashBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=flash',
        filebrowserImageUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
    });
}
if ($('#email-signatures').length) {
    CKEDITOR.replace('email-signatures', {
        height: 200,
        language: 'vi',
        format_tags: 'p;h1;h2;h3;pre',
        filebrowserImageBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=images',
        filebrowserFlashBrowseUrl: '../../js/ckfinder/ckfinder.html?Type=flash',
        filebrowserImageUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: '../../js/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
    });
}

$('.alert-success').fadeIn(500);
setTimeout("$('.alert-success').fadeOut(1500);", 3000);

integratedCKEDITOR('description-post',height=200);
integratedCKEDITOR('content-post',height=800);
integratedCKEDITOR('seo-description-post',height=200);
if ($('#btnBrowseImagePost').length) {
    var button1 = document.getElementById('btnBrowseImagePost');
    button1.onclick = function () {
        selectFileWithKCFinder('pathImagePost','showHinhPost');
    }
};
integratedCKEDITOR('description-tuyen-dung',height=200);
integratedCKEDITOR('content-tuyen-dung',height=800);
integratedCKEDITOR('seo-description-tuyen-dung',height=200);
if ($('#btnBrowseImageTuyenDung').length) {
    var button1 = document.getElementById('btnBrowseImageTuyenDung');
    button1.onclick = function () {
        selectFileWithKCFinder('pathImageTuyenDung','showHinhTuyenDung');
    }
}
function loadDataFormWhenSelectTreeMenu(data) {
    $('input[name=state]').val('edit');
    $('form#frmCreateThuNghiem').attr('action', getBaseURL() + "sml_admin/thu-nghiem-update/" + data.id);
    $('input[name=_method]').val('PATCH');
    $('input[name=name]').val(data.name);
    $('input[name=parentId]').val(data['parent_id']);
    $('input[name=mainId]').val(data.id);
    $('input[name=level]').val(data.level);
    $('button#deleteMenu').show();
    $('.test_info_right h3.title').html('Cập Nhật Menu: ' + data.name);
    (data.isActive === 1) ? $('input[name=menu_is_active]').prop('checked', true) : $('input[name=menu_is_active]').prop('checked', false);
    if (data.type === 1) {
        $('#menu_state_page_category').hide();
        $('#menu_state_page_single').show();
        $('input[name=state_menu_category]').prop('checked', false);
        $('select[name=page_id]').children("option").removeAttr('selected');
        $('select[name=page_id]').children("option[value=" + data['content_id'] + "]").attr('selected', 'selected');
    } else {
        $('#menu_state_page_category').show();
        $('#menu_state_page_single').hide();
        $('input[name=state_menu_category]').prop('checked', true);
        $('select[name=category_id]').children("option").removeAttr('selected');
        $('select[name=category_id]').children("option[value=" + data['content_id'] + "]").attr('selected', 'selected');
    }
}
function resetForm() {
    $('input[name=state]').val('insert');
    $('form#frmCreateThuNghiem').attr('action', getBaseURL() + "sml_admin/thu-nghiem-create");
    $('input[name=_method]').val('POST');
    $('input[name=name]').val('');
    $('.test_info_right h3.title').html('Tạo Mới Menu');
    $('input[name=parentId]').val('');
    $('input[name=mainId]').val('');
    $('input[name=level]').val('');
    $('#menu_state_page_category').hide();
    $('#menu_state_page_single').show();
    $('input[name=menu_is_active]').prop('checked', false);
    $('input[name=state_menu_category]').prop('checked', false);
    $('select[name=page_id]').children("option").removeAttr('selected');
    $('select[name=page_id]').children("option[value=0]").attr('selected', 'selected');
    $('select[name=category_id]').children("option").removeAttr('selected');
    $('select[name=category_id]').children("option").first().attr('selected', 'selected');
}
function loadTreeMenu() {
    $.ajax({
        type: "GET",
        url: getBaseURL() + "sml_admin/load-tree",
        dataType: 'json',
        success: function (data) {
            var runTree = $('#tree').tree({
                uiLibrary: 'bootstrap4',
                dataSource: data,
                primaryKey: 'id',
                dragAndDrop: true
                // imageUrlField: 'flagUrl'
            });
            runTree.bind('select', {key: data}, function (e, node, id) {
                $.ajax({
                    type: "GET",
                    url: getBaseURL() + "sml_admin/find/" + id,
                    dataType: 'json',
                    success: function (data2) {
                        loadDataFormWhenSelectTreeMenu(data2)
                    }
                });
            });
            runTree.on('nodeDrop', function (e, id, parentId, orderNumber) {
                if (parentId == null)
                    parentId = 0;
                $.ajax({
                    type: "GET",
                    url: getBaseURL() + "sml_admin/updateNodeFamily/" + id + "/" + parentId,
                    dataType: 'json',
                    success: function (data2) {
                        // loadDataFormWhenSelectTreeMenu(data2)
                    }
                });
            });
        },
        error: function (data) {
            // alert(data);
        }
    });
}
loadTreeMenu();
if ($('#select_state_menu_category').is(':checked')) {
    $('#menu_state_page_category').show();
    $('#menu_state_page_single').hide();
}
else {
    $('#menu_state_page_category').hide();
    $('#menu_state_page_single').show();
}
$('#select_state_menu_category').change(function () {
    if ($('#select_state_menu_category').is(':checked')) {
        $('#menu_state_page_category').show();
        $('#menu_state_page_single').hide();
    }
    else {
        $('#menu_state_page_category').hide();
        $('#menu_state_page_single').show();
    }
});


$('#test_info_state_menu').change(function () {
    switch ($(this).val()) {
        case '1':
            $('#menu_state_page').show();
            break;
        case '2':
            $('#menu_state_page').hide();
            break;
    }
});
$('#sumbitFormThuNghiem').click(function () {
    $('#frmCreateThuNghiem').submit();
});
$('button#addMoreMenu').click(function () {
    $('button#deleteMenu').hide();
    resetForm();
});
$('button#addSubMenu').click(function () {
    $('button#deleteMenu').hide();
    var id = $('input[name=mainId]').val();
    var name = $('input[name=name]').val();
    var level = $('input[name=level]').val();
    resetForm();
    $('.test_info_right h3.title').html('Thêm Meno Con Cho: ' + name)
    $('input[name=parentId]').val(id);
    $('input[name=level]').val(level);

});

$('button#deleteMenu').click(function(){
    var id = $('input[name=mainId]').val();
    $('form#frmCreateThuNghiem').attr('action', getBaseURL() + "sml_admin/xoa-menu/"+id);
    $('input[name=_method]').val('Delete');
    $('#frmCreateThuNghiem').submit();
});


var tree = [
    {
        "id": 1,
        "text": "Asia",
        "population": null,
        "flagUrl": null,
        "checked": false,
        "hasChildren": true,
        "children": [
            {
                "id": 2,
                "text": "China",
                "population": 1373541278,
                "flagUrl": "http://code.gijgo.com/flags/24/China.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 3,
                "text": "Japan",
                "population": 126730000,
                "flagUrl": "http://code.gijgo.com/flags/24/Japan.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 4,
                "text": "Mongolia",
                "population": 3081677,
                "flagUrl": "http://code.gijgo.com/flags/24/Mongolia.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            }
        ]
    },
    {
        "id": 5,
        "text": "North America",
        "population": null,
        "flagUrl": null,
        "checked": false,
        "hasChildren": false,
        "children": [
            {
                "id": 6,
                "text": "USA",
                "population": 325145963,
                "flagUrl": "http://code.gijgo.com/flags/24/United%20States%20of%20America(USA).png",
                "checked": false,
                "hasChildren": false,
                "children": [
                    {
                        "id": 7,
                        "text": "California",
                        "population": 39144818,
                        "flagUrl": null,
                        "checked": false,
                        "hasChildren": false,
                        "children": []
                    },
                    {
                        "id": 8,
                        "text": "Florida",
                        "population": 20271272,
                        "flagUrl": null,
                        "checked": false,
                        "hasChildren": false,
                        "children": []
                    }
                ]
            },
            {
                "id": 9,
                "text": "Canada",
                "population": 35151728,
                "flagUrl": "http://code.gijgo.com/flags/24/canada.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 10,
                "text": "Mexico",
                "population": 119530753,
                "flagUrl": "http://code.gijgo.com/flags/24/mexico.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            }
        ]
    },
    {
        "id": 11,
        "text": "South America",
        "population": null,
        "flagUrl": null,
        "checked": false,
        "hasChildren": false,
        "children": [
            {
                "id": 12,
                "text": "Brazil",
                "population": 207350000,
                "flagUrl": "http://code.gijgo.com/flags/24/brazil.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 13,
                "text": "Argentina",
                "population": 43417000,
                "flagUrl": "http://code.gijgo.com/flags/24/argentina.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 14,
                "text": "Colombia",
                "population": 49819638,
                "flagUrl": "http://code.gijgo.com/flags/24/colombia.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            }
        ]
    },
    {
        "id": 15,
        "text": "Europe",
        "population": null,
        "flagUrl": null,
        "checked": false,
        "hasChildren": false,
        "children": [
            {
                "id": 16,
                "text": "England",
                "population": 54786300,
                "flagUrl": "http://code.gijgo.com/flags/24/england.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 17,
                "text": "Germany",
                "population": 82175700,
                "flagUrl": "http://code.gijgo.com/flags/24/germany.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 18,
                "text": "Bulgaria",
                "population": 7101859,
                "flagUrl": "http://code.gijgo.com/flags/24/bulgaria.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            },
            {
                "id": 19,
                "text": "Poland",
                "population": 38454576,
                "flagUrl": "http://code.gijgo.com/flags/24/poland.png",
                "checked": false,
                "hasChildren": false,
                "children": []
            }
        ]
    }
];
// var runTree = $('#tree').tree({
//     uiLibrary: 'bootstrap4',
//     dataSource: tree,
//     primaryKey: 'id',
//     imageUrlField: 'flagUrl'
// });
// runTree.on('select', function (e, node, id) {
//     alert('select is fired for node with id=' + id);
// });
