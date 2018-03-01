function getDuLieuThunghiem() {
    $.ajax({
        type: "GET",
        url: getBaseURL() + "sml_admin/thunghiem",
        dataType: 'json',
        success: function (data) {
            $('.thunghiem').html(data);
        },
        error: function (data) {
            // alert(data);
        }
    });
}
getDuLieuThunghiem();
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
var runTree = $('#tree').tree({
    uiLibrary: 'bootstrap4',
    dataSource: tree,
    primaryKey: 'id',
    imageUrlField: 'flagUrl'
});
runTree.on('select', function (e, node, id) {
    alert('select is fired for node with id=' + id);
});
