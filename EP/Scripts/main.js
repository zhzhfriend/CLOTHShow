﻿$(document).ready(function () {
    //bindSelectedItemRemoveIcon();
    $('input[type="checkbox"]').attr('checked', false);
    $('input[type="checkbox"]').click(function (item) {
        var name = $(this).attr('name');
        if ($(this)[0].checked) {
            $('#searchParameters').append('<li data="' + name + '" class="btn btn-success">' + name + '<button class="close itemclose">&times;</button></li>');
            bindSelectedItemRemoveIcon();
        }
        else {
            $('#searchParameters li').each(function (index, item) {
                if ($(item).text().indexOf(name) > -1)
                    $(item).remove();
            });
        }
    });

    $('#lnkAddClothes').click(function () {
        if (getUserSelectedItems().length == 0) {
            alert('您尚未选择特征信息');
        }
        else if (!validSelectItems()) {
            return false;
        }
        else {
            $('#myModal').modal();
            $('#myModal #divAddClothes').load('/Clothes/Add');
        }
        return false;
    });
    $('.dropdown-select').multiselect({
        header: false,
        minWidth: '150',
        selectedList: 2,
        'noneSelectedText': 'None'
    });

    $(".dropdown-select").on("multiselectclick", function (event, ui) {
        if (ui.value != '0') {
            if (ui.checked) {
                $('#searchParameters').append('<li data="' + ui.value + '" class="btn btn-success">' + ui.value + '<button class="close itemclose">&times;</button></li>');
                bindSelectedItemRemoveIcon();
            }
            else {
                $('#searchParameters li').each(function (index, item) {
                    if ($(item).html().indexOf(ui.value) > -1)
                        $(item).remove();
                });
            }
        }
    });

    //$('#search').click(function () {
    //    searchClothes(function () {
    //        return { 'tags': getUserSelectedItems(), 'clothesTypeId': $('#clothesTypeId').val() };
    //    });
    //    return false;
    //});

    $('#search').click(function () {
        searchClothes(function () {
            return { 'tags': getUserSelectedItems(), 'clothesTypeId': $('#clothesTypeId').val() };
        });
        return false;
    });

    $('#imgSearch').click(function () {
        searchClothes(function () {
            return { 'NO': $('#txtSearchNO').val(), 'clothesTypeId': $('#clothesTypeId').val() };
        });
        return false;
    });

    $('#search').click();
});

function bindSelectedItemRemoveIcon() {
    $('.itemclose').click(function (item) {
        $('input[name="' + $(this).parent().attr('data') + '"]').click();
        $('input[value="' + $(this).parent().attr('data') + '"]').click();
    });
}

function searchClothes(getDataParamsFunc) {
    $('#container').html('<div class="alert alert-info">正在加载数据</div>');
    var data = getDataParamsFunc();
    $.post($('#search').attr('href'), data, function (data) {
        $('#container').empty();
        $('#container').append(data);
    }).fail(function () {
        $('#container').html('<div class="alert alert-error">加载数据失败</div>');
    });
    return false;
}

function getUserSelectedItems() {
    var items = Array();
    $('#searchParameters li').each(function (index, item) {
        items.push($(item).attr('data'));
    });
    return items.join(',');
}

function validSelectItems() {
    var r = true;
    $('ul.nav').each(function (index, item) {
        if ($(item).attr('multiple') == undefined)
            if ($(item).find('input[type="checkbox"]:checked').length > 1) {
                alert('一个属性只可选择一个值');
                r = false;
            }
    })
    return r;
}