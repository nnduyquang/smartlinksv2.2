function loadDataFormWhenSelectTreeMenu(data) {
    $('input[name=state]').val('edit');
    $('form#frmCreateThuNghiem').attr('action', getBaseURL() + "sml_admin/thu-nghiem-update/" + data.id);
    $('input[name=_method]').val('PATCH');
    $('input[name=name]').val(data.name);
    $('input[name=parentId]').val(data['parent_id']);
    $('input[name=mainId]').val(data.id);
    $('input[name=level]').val(data.level);
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
            console.log(data);
            var runTree = $('#tree').tree({
                uiLibrary: 'bootstrap4',
                dataSource: data,
                primaryKey: 'id',
                // imageUrlField: 'flagUrl'
            });
            runTree.bind('select', {key: data}, function (e, node, id) {
                $.ajax({
                    type: "GET",
                    url: getBaseURL() + "sml_admin/find/" + id,
                    dataType: 'json',
                    success: function (data2) {
                        console.log(data2);
                        loadDataFormWhenSelectTreeMenu(data2)
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
    resetForm();
});
$('button#addSubMenu').click(function () {
    var id = $('input[name=mainId]').val();
    var name = $('input[name=name]').val();
    var level = $('input[name=level]').val();
    resetForm();
    $('.test_info_right h3.title').html('Thêm Meno Con Cho: ' + name)
    $('input[name=parentId]').val(id);
    $('input[name=level]').val(level);

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
