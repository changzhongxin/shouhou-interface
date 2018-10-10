$(function () {
    //操作行
    operateRow();
});

//添加新的行数据
function addData() {
    var table = $('#dataTable');
    var ths = table.find('tr:eq(0) th');
    ths.each(function () {
        $(this).css({'text-align': 'center', 'line-height': '35px'});
    });
    var trs = $('#dataTable tr:gt(0)');
    trs.css({'background-color': 'white', 'cursor': 'pointer'});
    var trCount = table.find('tr').length;
    var tdCount = table.find('tr:eq(0) th').length;
    var tds = '';
    for (var i = 0; i < tdCount; i++) {
        if (i != 0 && i != 1) {
            tds += '<td contenteditable="true"></td>';
        } else if (i == 0) {
            tds += '<td uuid=' + getUUID() + '></td>';
        } else if (i == 1) {
            tds += '<td >文本</td>';
        }
    }
    var trHtml = '<tr>' + tds + '</tr>';
    table.append(trHtml);
    var firstTd = table.find('tr:eq(' + trCount + ') td:eq(0)');
    firstTd.text(trCount);

    //添加新的节点后操作行
    operateRow();
}

//选择不同仪器类型时加载数据
function loadData() {
    $('#tableArea').show();
    $.post('instrinter/getList', function (data) {
            //为th添加样式
            var table = $('#dataTable');
            var trs = table.find('tr:gt(0)');
            trs.remove();
            var ths = table.find('tr:eq(0) th');
            ths.each(function () {
                $(this).css({'text-align': 'center', 'line-height': '35px'});
            });

            var tdCount = table.find('tr:eq(0) th').length;
            var interTypeIndex = $('#interType').index();
            var interNameIndex = $('#interName').index();
            var instrNameIndex = $('#instrName').index();
            var filePathIndex = $('#filePath').index();
            //向表格中添加数据
            var trHtml = '';
            for (var j = 0; j < data.length; j++) {
                var tds = '';
                for (var i = 0; i < tdCount; i++) {
                    switch (i) {
                        case 0:
                            tds += '<td uuid=' + data[j].uuid + '>' + (j + 1) + '</td>';
                            break;
                        case interTypeIndex:
                            tds += '<td >' + data[j].interType + '</td>';
                            break;
                        case interNameIndex:
                            tds += '<td contenteditable="true">' + data[j].interName + '</td>';
                            break;
                        case instrNameIndex:
                            tds += '<td contenteditable="true">' + data[j].instrName + '</td>';
                            break;
                        case filePathIndex:
                            tds += '<td contenteditable="true">' + data[j].filePath + '</td>';
                            break;
                    }
                    trHtml = '<tr instrId="' + data[j].instrId + '">' + tds + '</tr>';
                }
                table.append(trHtml);
            }

            var trs2 = table.find('tr:gt(0)');
            trs2.css({'background-color': 'white', 'cursor': 'pointer'});

            //添加新的节点后操作行
            operateRow();
        }
        ,
        'json'
    )
}

//保存行数据
function saveData() {
    var index = $('#trIndex').val();
    if (!isNotEmpty(index)) {
        alert('请选择要保存的数据行！');
        return false;
    }
    var tr = $('#dataTable tr:eq(' + index + ')');
    var uuid = tr.find('td:eq(0)').attr('uuid');
    var interTypeIndex = $('#interType').index();
    var interNameIndex = $('#interName').index();
    var instrNameIndex = $('#instrName').index();
    var filePathIndex = $('#filePath').index();
    var interType = tr.find('td:eq(' + interTypeIndex + ')').text();
    var interName = tr.find('td:eq(' + interNameIndex + ')').text();
    var instrName = tr.find('td:eq(' + instrNameIndex + ')').text();
    var filePath = tr.find('td:eq(' + filePathIndex + ')').text();
    var instrId = tr.attr('instrId');
    var instrData = {
        interType: interType,
        interName: interName,
        instrName: instrName,
        filePath: filePath,
        uuid: uuid,
        instrId: instrId
    };

    $.post('instrinter/add', instrData, function (data) {
        alert(data.message);
    }, 'json');

}

//解析设置
function parseSet(obj) {
    var uuid;
    var index = $('#trIndex').val();
    if (isNotEmpty(obj)) {
        uuid = obj.find('td:eq(0)').attr('uuid');
    } else if (!isNotEmpty(obj) && !isNotEmpty(index)) {
        alert('请选择接口类型');
        return false;
    } else {
        var tr = $('#dataTable tr:eq(' + index + ')');
        uuid = tr.find('td:eq(0)').attr('uuid');
    }
    location.href = 'analysis?uuid=' + uuid;
}

/**
 * 生成uuid的算法
 * @returns {string}
 */
function getUUID() {
    function S4() {
        return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
    }

    return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
}

// 创建删除函数
function del(obj) {
    var tr = $(obj).parents('tr');
    var trs = tr.siblings();
    for (var i = 1; i < trs.length; i++) {
        var firstTd = $(trs[i]).find('td:eq(0) input');
        firstTd.val(i);
        firstTd.css('text-align', 'center');
    }
    tr.remove();
}

/**
 * 操作行
 */
function operateRow() {
    //鼠标在单元格上的移进移出事件
    var trs = $('#dataTable tr:gt(0)');
    trs.hover(function () {
        $(this).css({'cursor': 'pointer'});
    }, function () {
        $(this).css({'cursor': 'pointer'});
    });

//当双击这一行时调用解析设置的方法
    trs.dblclick(function () {
        //调用解析设置方法
        parseSet($(this));
    });
//当单击这一行时
    trs.click(function () {
        var tra = $(this);
        var index = tra.index();
        $('#trIndex').val(index);
        tra.css({'background-color': 'lightblue', 'cursor': 'pointer'});
        trs.click(function () {
            var trb = $(this);
            var index = trb.index();
            $('#trIndex').val(index);
            tra.css({'background-color': 'white', 'cursor': 'pointer'});
            trb.css({'background-color': 'lightblue', 'cursor': 'pointer'});
        });
    });
}

/**
 * 判断值是否不为空，如果不为空返回true
 * @param {Object} value
 */
function isNotEmpty(value) {
    if (value == '' || value == undefined || value == null) {
        return false;
    } else {
        return true;
    }
}
