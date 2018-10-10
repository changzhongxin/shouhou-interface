$(function () {
    //加载时检查uuid是否为空
    var uuid = $('#uuid').val();
    if (isNotEmpty(uuid)) {
        $.post('pdf/getConfig', {uuid: uuid}, function (data) {
            var fg = JSON.parse(data.freeconfig);
            var gg = JSON.parse(data.gridconfig);
            var rgg = JSON.parse(data.gridresultconfig);
            if (isNotEmpty(fg)) {
                var table = $('#table');
                var tdCount = table.find('tr:eq(0) th').length;
                var trCount = fg.length;
                var rowMarkTextIndex = $('#rowMarkText').index();
                var rowOffsetIndex = $('#rowOffset').index();
                var colMarkTextIndex = $('#colMarkText').index();
                var fileNameMarkIndex = $('#fileNameMark').index();
                //向表格中添加数据
                var trHtml = '';
                for (var j = 0; j < trCount; j++) {
                    var tds = '';
                    for (var i = 0; i < tdCount; i++) {
                        switch (i) {
                            case 0:
                                tds += '<td><input type="text" style="border: none;" value="' + (j + 1) + '"></td>';
                                break;
                            case rowMarkTextIndex:
                                tds += '<td><input class="rowMarkText"  type="text" style="border: none;" value="' + fg[j].rowMarkText + '"></td>';
                                break;
                            case rowOffsetIndex:
                                tds += '<td><input class="rowOffset"  type="text" style="border: none;" value="' + fg[j].rowOffset + '"></td>';
                                break;
                            case colMarkTextIndex:
                                tds += '<td><input class="colMarkText"  type="text" style="border: none;" value="' + fg[j].colMarkText + '"></td>';
                                break;
                            case fileNameMarkIndex:
                                tds += '<td><input class="fileNameMark"  type="text" style="border: none;" value="' + fg[j].fileNameMark + '"></td>';
                                break;
                            case (tdCount - 1):
                                tds += '<td><a href="javascript:void(0);" onclick="del(this)" >&nbsp;&nbsp;&nbsp;&nbsp;删除</a></td>';
                                break;
                        }
                        trHtml = '<tr>' + tds + '</tr>';
                    }
                    table.append(trHtml);
                }
            }
            if (isNotEmpty(gg)) {
                var table = $('#table1');
                var tdCount = table.find('tr:eq(0) th').length;
                var trCount = gg.length;
                var rowMarkTextBeginIndex = $('#rowMarkTextBegin').index();
                var startOffsetIndex = $('#startOffset').index();
                var rowMarkNoIndex = $('#rowMarkNo').index();
                var rowMarkTextEndIndex = $('#rowMarkTextEnd').index();
                var endOffsetIndex = $('#endOffset').index();
                var rowMarkEndNoIndex = $('#rowMarkEndNo').index();
                //向表格中添加数据
                var trHtml = '';
                for (var j = 0; j < trCount; j++) {
                    var tds = '';
                    for (var i = 0; i < tdCount; i++) {
                        switch (i) {
                            case 0:
                                tds += '<td><input type="text" style="border: none;" value="' + (j + 1) + '"></td>';
                                break;
                            case rowMarkTextBeginIndex:
                                tds += '<td><input class="rowMarkTextBegin" type="text" style="border: none;" value="' + gg[j].rowMarkTextBegin + '"></td>';
                                break;
                            case startOffsetIndex:
                                tds += '<td><input class="startOffset" type="text" style="border: none;" value="' + gg[j].startOffset + '"></td>';
                                break;
                            case rowMarkNoIndex:
                                tds += '<td><input class="rowMarkNo" type="text" style="border: none;" value="' + gg[j].rowMarkNo + '"></td>';
                                break;
                            case rowMarkTextEndIndex:
                                tds += '<td><input class="rowMarkTextEnd" type="text" style="border: none;" value="' + gg[j].rowMarkTextEnd + '"></td>';
                                break;
                            case endOffsetIndex:
                                tds += '<td><input class="endOffset" type="text" style="border: none" value="' + gg[j].endOffset + '"></td>';
                                break;
                            case rowMarkEndNoIndex:
                                tds += '<td><input class="rowMarkEndNo" type="text" style="border: none" value="' + gg[j].rowMarkEndNo + '"></td>';
                                break;
                            case (tdCount - 1):
                                tds += '<td><a href="javascript:void(0);" onclick="del(this)" >&nbsp;&nbsp;&nbsp;&nbsp;删除</a></td>';
                                break;
                        }
                        trHtml = '<tr>' + tds + '</tr>';
                    }
                    table.append(trHtml);
                }

            }
            if (isNotEmpty(rgg)) {
                var table = $('#table2');
                var tdCount = table.find('tr:eq(0) th').length;
                var trCount = rgg.length;
                var colMarkIndex = $('#colMark').index();
                var gridNoIndex = $('#gridNo').index();
                //向表格中添加数据
                var trHtml = '';
                for (var j = 0; j < trCount; j++) {
                    var tds = '';
                    for (var i = 0; i < tdCount; i++) {
                        switch (i) {
                            case 0:
                                tds += '<td style="padding: 0;"><input type="text" style="border: none" value="' + (j + 1) + '"></td>';
                                break;
                            case colMarkIndex:
                                tds += '<td><input class="colMark" type="text" style="border: none" value="' + rgg[j].colMark + '"></td>';
                                break;
                            case gridNoIndex:
                                tds += '<td><input class="gridNo" type="text" style="border: none" value="' + rgg[j].gridNo + '"></td>';
                                break;
                            case (tdCount - 1):
                                tds += '<td><a href="javascript:void(0);" onclick="del(this)" >&nbsp;&nbsp;&nbsp;&nbsp;删除</a></td>';
                                break;
                        }
                        trHtml = '<tr>' + tds + '</tr>';
                    }
                    table.append(trHtml);
                }
            }
        }, 'json');
    }

    //当file的内容发生改变时，上传pdf文件并将文件转换成html文件，同时返回html文件的路径，设置到隐藏域中
    $('#file').change(function () {
        //异步上传pdf文件
        uploadPdf();
    });

});


/**
 * 异步上传pdf文件
 */
function uploadPdf() {
    //$('#uuid').val('');

    //验证是否是正确的文件格式
    var fileVal = $('#file').val();
    var pdfIndex = fileVal.lastIndexOf('.pdf');
    if (pdfIndex == -1) {
        alert('请选择正确的文件格式！');
        return false;
    }
    $.messager.progress({'msg': '文件正在打开，请稍候...'});
    //异步上传文件
    $.ajaxFileUpload({
        url: 'pdf/pdftohtml',
        secureuri: false,//设置是否需要安全协议，一般为false
        type: 'post',
        fileElementId: 'file',//文件域的id属性值
        dataType: 'json',
        success: function (data) {
            $.messager.progress('close');
            if (data.code == 0) {
                alert(data.message);
            } else {
                var htmlPath = data.message;
                var nameIndex = htmlPath.lastIndexOf('\\');
                var htmlName = htmlPath.substr(nameIndex, htmlPath.length - 1);
                //将html文件的路径设置到隐藏域中，供后面的业务逻辑使用
                $('#htmlPath').val(htmlPath);
                //将html文件名设置到text_iframe框架的src属性中
                $('#text_iframe').attr('src', 'pdfhtml' + htmlName);
                //如果文本视图隐藏
                var b = $('#text_iframe').is(':hidden');
                if (b) {
                    //显示文本数据视图
                    showDataText();
                    //更改css样式
                    $('#myTab li:eq(0) a').css({
                        'border-left-color': 'transparent',
                        'border-bottom-color': '#ddd',
                        'border-top-color': 'transparent',
                        'border-right-color': 'transparent'
                    });
                    $('#myTab li:eq(1) a').css({
                        'border-left-color': '#ddd',
                        'border-bottom-color': 'white',
                        'border-top-color': '#ddd',
                        'border-right-color': '#ddd'
                    });
                }
            }
        }
    });

    $('#file').change(function () {
        uploadPdf();
    });
}


/**
 * 显示数据文本视图
 */
function showDataText() {
    var b = $('#text_iframe').is(':hidden');
    if (b) {
        $('#table_iframe').hide();
        $('#text_iframe').show();
    } else {
        alert('当前已经是文本视图！');
        return false;
    }
    ;
}

/**
 * 显示pdf解析之后的数据表格视图
 */
function showDataTable() {
    //如果text_iframe的src属性里面没有值，则单击表格视图时不更改css样式，并提示选择pdf文件
    var srcVal = $('#text_iframe').attr('src');
    if (!isNotEmpty(srcVal)) {
        $('#myTab li:eq(0) a').css({
            'border-left-color': 'transparent',
            'border-bottom-color': '#ddd',
            'border-top-color': 'transparent',
            'border-right-color': 'transparent'
        });
        $('#myTab li:eq(1) a').css({
            'border-left-color': '#ddd',
            'border-bottom-color': 'white',
            'border-top-color': '#ddd',
            'border-right-color': '#ddd'
        });
        alert('请选择pdf文件！');
        return false;
    }
    var b = $('#table_iframe').is(':hidden');
    if (b) {
        $('#text_iframe').hide();
        $('#table_iframe').show();
    } else {
        alert('当前已经是表格视图！');
        return false;
    }
    ;
    //处理json并添加到table中
    intoTable();
}

/**
 * 将解析的json数据再次进行处理并添加到内嵌框架的table中
 */
function intoTable() {
    var table = table_iframe.window.getTable();
    //将table中的html节点清空
    table.find('tbody').html('');
    //获取iframe中pdfhtml文件中的json格式数据
    var pageJson = text_iframe.window.getPageJson();
    var maxLengths = [];
    for (var t = 0; t < pageJson.length; t++) {
        var pageData = pageJson[t].pageData;
        //计算出trData中length最大的值，作为列的最大值
        var lengths = [];
        for (var k = 0; k < pageData.length; k++) {
            lengths.push(pageData[k].trData.length);
        }
        var maxLength = Math.max.apply(null, lengths);
        maxLengths.push(maxLength);
    }
    var finalMaxLength = Math.max.apply(null, maxLengths);
    var indexs = [];
    for (var t = 0; t < pageJson.length; t++) {
        var pageData = pageJson[t].pageData;
        for (var i = 0; i < pageData.length; i++) {
            var trData = pageData[i].trData;
            var tdHtml = '';
            for (var j = 0; j < finalMaxLength; j++) {
                //如果length<=1，一般为无用数据，排除掉
                if (trData.length <= 1) {
                    continue;
                }
                //如果行数据下标的值 >=最大length时，才会使用下标取textValue，否则textValue值为''
                var textValue = '';
                if (j <= trData.length - 1) {
                    textValue = trData[j].textValue;
                    var index1 = textValue.lastIndexOf('三甲苯');
                    var index2 = textValue.lastIndexOf('苯乙烯');
                    if (textValue.length > 1 && (index1 != -1 || index2 != -1)) {
                        indexs.push(j);
                    }
                }
                tdHtml += '<td>' + textValue + '</td>';
            }
            //如果是有用的数据，才会添加到table中
            if (trData.length > 1) {
                var trHtml = '<tr>' + tdHtml + '</tr>';
                table.find('tbody').append(trHtml);
            }
        }
    }

    if (indexs.length > 0) {
        var trs = table.find('tr');
        var maxIndex = Math.max.apply(null, indexs);
        for (var i = 0; i < trs.length; i++) {
            var tds = $(trs[i]).find('td');
            for (var j = 0; j < tds.length; j++) {
                var tv = $(tds[j]).text();
                var index1 = tv.lastIndexOf('三甲苯');
                var index2 = tv.lastIndexOf('苯乙烯');
                if (tv.length > 1 && (index1 != -1 || index2 != -1) && j != maxIndex) {
                    $(tds[maxIndex]).text(tv);
                    $(tds[j]).text('');
                }
            }
        }
    }
}


/**
 * 解析数据并将解析后的结果设置到表格中
 */
function parseData() {
    //先判断是否选择了pdf文件
    var pdf = $('#file').val();
    if (!isNotEmpty(pdf)) {
        alert('请先选择PDF文件！');
        return false;
    }

    //判断是否添加配置信息
    var freeParamCount = $('#table tr').length;
    var gridParamCount = $('#table1 tr').length;
    if (freeParamCount <= 1 && gridParamCount <= 1) {
        alert('请添加配置！');
        return false;
    }
    var tdText = $('#table tr:eq(1) td:eq(1) input').val();
    var tdText1 = $('#table1 tr:eq(1) td:eq(1) input').val();
    if (!isNotEmpty(tdText) && !isNotEmpty(tdText1)) {
        alert('请填写配置信息！');
        ;
        return false
    }

    //如果自由区域表格的第二行的第二个单元格文本不为空，则开始处理自由配置
    if (isNotEmpty(tdText)) {
        var trs = $('#table tr');
        for (var i = 0; i < trs.length; i++) {
            $(trs[i]).find('td:eq(1) input').attr('class', 'rowMarkText');
            $(trs[i]).find('td:eq(2) input').attr('class', 'rowOffset');
            $(trs[i]).find('td:eq(3) input').attr('class', 'colMarkText');
            $(trs[i]).find('td:eq(4) input').attr('class', 'fileNameMark');
        }
        var rowMarkText = $('.rowMarkText');
        var rowOffset = $('.rowOffset');
        var colMarkText = $('.colMarkText');
        var fileNameMark = $('.fileNameMark');
        //将配置添加到数组中
        var freedomParam = [];
        for (var i = 0; i < rowMarkText.length; i++) {
            var rowMarkTextVal = $.trim($(rowMarkText[i]).val());
            var rowOffsetVal = $.trim($(rowOffset[i]).val());
            var colMarkTextVal = $.trim($(colMarkText[i]).val());
            var fileNameMarkVal = $.trim($(fileNameMark[i]).val());
            if (!isNotEmpty(rowMarkTextVal)) {
                alert('请输入自由区域行标识文本！');
                return false;
            }
            if (!isNotEmpty(rowOffsetVal)) {
                rowOffsetVal = '0';
            }
            if (!isNotEmpty(colMarkTextVal)) {
                colMarkTextVal = rowMarkTextVal;
            }
            /*if (!isNotEmpty(colMarkTextVal) && !isNotEmpty(fileNameMarkVal)) {
                alert('请输入自由区域列标识文本！');
                return false;
            }*/
            freedomParam.push(
                {
                    rowMarkText: rowMarkTextVal,//进样量
                    rowOffset: rowOffsetVal,//-3
                    colMarkText: colMarkTextVal,//操作者
                    fileNameMark: fileNameMarkVal//.D
                }
            )
            ;
        }
    }
    //自由配置
    /*var freedomParam = [];
    freedomParam.push(
        {
            rowMarkText: '进样量',//进样量
            rowOffset: '-3',//-3
            colMarkText: '操作者',//操作者
            fileNameMark: '.D'
        },
        {
            rowMarkText: '进样量',//进样量
            rowOffset: '-3',//-3
            colMarkText: '操作者',//操作者
            fileNameMark: ''
        }
    );*/

    //如果网格区域表格的第二行的第二个单元格文本不为空，则开始处理表格配置
    if (isNotEmpty(tdText1)) {
        var trs = $('#table1 tr');
        for (var i = 1; i < trs.length; i++) {
            $(trs[i]).find('td:eq(0) input').attr('class', 'rowParamNo');
            $(trs[i]).find('td:eq(1) input').attr('class', 'rowMarkTextBegin');
            $(trs[i]).find('td:eq(2) input').attr('class', 'startOffset');
            $(trs[i]).find('td:eq(3) input').attr('class', 'rowMarkNo');
            $(trs[i]).find('td:eq(4) input').attr('class', 'rowMarkTextEnd');
            $(trs[i]).find('td:eq(5) input').attr('class', 'endOffset');
            $(trs[i]).find('td:eq(6) input').attr('class', 'rowMarkEndNo');
        }
        var rowParamNo = $('.rowParamNo');
        var rowMarkTextBegin = $('.rowMarkTextBegin');
        var startOffset = $('.startOffset');
        var rowMarkNo = $('.rowMarkNo');
        var rowMarkTextEnd = $('.rowMarkTextEnd');
        var endOffset = $('.endOffset');
        var rowMarkEndNo = $('.rowMarkEndNo');
        //将配置添加到数组集合中
        var gridParam = [];
        for (var i = 0; i < rowMarkTextBegin.length; i++) {
            var rowParamNoVal = $.trim($(rowParamNo[i]).val());
            var rowMarkTextBeginVal = $.trim($(rowMarkTextBegin[i]).val());
            var startOffsetVal = $.trim($(startOffset[i]).val());
            var rowMarkNoVal = $.trim($(rowMarkNo[i]).val());
            var rowMarkTextEndVal = $.trim($(rowMarkTextEnd[i]).val());
            var endOffsetVal = $.trim($(endOffset[i]).val());
            var rowMarkEndNoVal = $.trim($(rowMarkEndNo[i]).val());
            if (!isNotEmpty(rowMarkTextBeginVal)) {
                alert('请输入网格区域行标识文本！');
                return false;
            }
            if (!isNotEmpty(startOffsetVal)) {
                startOffsetVal = '0';
            }
            if (!isNotEmpty(rowMarkNoVal)) {
                rowMarkNoVal = '1';
            }
            if (!isNotEmpty(endOffsetVal)) {
                endOffsetVal = '0';
            }
            if (!isNotEmpty(rowMarkEndNoVal)) {
                rowMarkEndNoVal = '1';
            }
            gridParam.push(
                {
                    rowParamNo: rowParamNoVal,//1
                    rowMarkTextBegin: rowMarkTextBeginVal,//保留时间
                    startOffset: startOffsetVal,//2
                    rowMarkNo: rowMarkNoVal,
                    rowMarkTextEnd: rowMarkTextEndVal,//数据文件
                    endOffset: endOffsetVal,//-2
                    rowMarkEndNo: rowMarkEndNoVal
                }
            );
        }
    }

    //表格配置
    /*var gridParam = [];
    gridParam.push(
        {
            rowParamNo: '1',
            rowMarkTextBegin: '保留时间',//保留时间
            startOffset: '0',//2
            rowMarkTextEnd: '数据文件',//数据文件
            endOffset: '-2',//-2
            rowMarkNo: '1'
        },
        {
            rowParamNo: '2',
            rowMarkTextBegin: '保留时间',
            startOffset: '0',//2
            rowMarkTextEnd: '总量',
            endOffset: '-1',//-2
            rowMarkNo: '2'
        }
    );*/

    //将解析的json数据再次进行处理并添加到内嵌框架的table中
    intoTable();

    //配置信息添加完成后将html文件转换成excel
    var table = table_iframe.window.getTable();
    var tableHtml = '<table>' + table.html().trim() + '</table>';
    var htmlPath = $('#htmlPath').val();

    $.messager.progress({'msg': '数据正在处理中，请稍候...'});
    $.post('pdf/htmltoexcel', {tableHtml: tableHtml, htmlPath: htmlPath}, function (result) {
        if (result.code == 0) {
            $.messager.progress('close');
            alert(result.message);
        } else {
            $.post('pdf/exceltohtml', {
                excelPath: result.message,
                freedom: JSON.stringify(freedomParam),
                grid: JSON.stringify(gridParam)
            }, function (data) {
                if (data.code == 0) {
                    $.messager.progress('close');
                    alert(data.message);
                } else {
                    $.messager.progress('close');
                    //获取excel转换后的html标签文本并添加到显示结果的表格中
                    var tbody = $('#result_table tbody');
                    tbody.html(data.message);

                    //获取列索引
                    var ths = $('#table2 tr:first-child th');
                    var colMarkIndex, gridNoIndex;
                    ths.each(function () {
                        var thId = $(this).attr('id');
                        if (thId == 'colMark') {
                            colMarkIndex = $(this).index();
                        } else if (thId == 'gridNo') {
                            gridNoIndex = $(this).index();
                        }
                    });
                    //获取列索引对应的单元格中的输入数据
                    var trs = $('#table2 tr:gt(0)');
                    var gridResultParam = [];
                    for (var i = 0; i < trs.length; i++) {
                        var tds = $(trs[i]).find('td');
                        var tdText = $(tds[colMarkIndex]).find('input').val();
                        var colMark;
                        if (tdText.length > 1) {
                            colMark = tdText.split(',');
                        } else {
                            colMark = tdText;
                        }
                        if (!isNotEmpty(colMark)) {
                            alert('解析结果区域列标识配置输入错误！');
                            return false;
                        }
                        var gridNo = $(tds[gridNoIndex]).find('input').val();
                        if (isNotEmpty(tdText) && !isNotEmpty(gridNo)) {
                            alert('请输入对应的网格配置序号！');
                            return false;
                        }
                        //将数据设置到参数数组中
                        gridResultParam.push(
                            {
                                colMark: colMark,
                                gridNo: gridNo

                            }
                        );
                    }
                    //循环参数数组
                    for (var k = 0; k < gridResultParam.length; k++) {
                        //获取当参数数组中当前网格配置的tr对象集合
                        var trs = $('.grid' + gridResultParam[k].gridNo);
                        if (trs.length < 1) {
                            alert('网格配置序号无法匹配，请输入正确的序号！');
                            return false;
                        }
                        var colMarks = gridResultParam[k].colMark;
                        //将列标识从英文字母转换成索引数字，并存入一个新的数组中
                        var cols = [];
                        for (var t = 0; t < colMarks.length; t++) {
                            var colIndex = parseInt(colMarks[t].toUpperCase().charCodeAt()) - 65;
                            cols[t] = colIndex;
                        }
                        //循环tr中的td并获取指定列索引的td中的文本内容
                        for (var u = 0; u < trs.length; u++) {
                            var tdHtml = '';
                            var tds = $(trs[u]).find('td');
                            for (var q = 0; q < tds.length; q++) {
                                for (var b = 0; b < cols.length; b++) {
                                    if (cols[b] == q) {
                                        var text = $(tds[q]).text();
                                        tdHtml += '<td>' + text + '</td>';
                                    }
                                }
                            }
                            //分别设置每一行的td
                            $(trs[u]).html(tdHtml);
                        }
                    }
                    //保存配置
                    var uuid = $('#uuid').val();
                    var freeConfig = JSON.stringify(freedomParam);
                    var gridConfig = JSON.stringify(gridParam);
                    var gridResultConfig = JSON.stringify(gridResultParam);
                    if (isNotEmpty(uuid)) {
                        $.post('pdf/saveConfig', {
                            freeconfig: freeConfig,
                            gridconfig: gridConfig,
                            gridresultconfig: gridResultConfig,
                            uuid: uuid
                        }, function () {

                        });
                    } else {
                        alert('保存配置失败，请返回上一级页面重新尝试！');
                    }
                }
            }, 'json');
        }
    }, 'json');

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

/**
 * 添加表格的索引
 */
function addIndex(table) {
    //添加表格的列索引，相当于是添加第一行
    var tdCount = table.find('tbody tr:first-child td').length;
    var tdHtml = '';
    for (var r = 0; r <= tdCount; r++) {
        tdHtml += '<td>' + r + '</td>';
    }
    var trHtml = '<tr>' + tdHtml + '</tr>';
    table.find('tbody').prepend(trHtml);
    //添加表格的行索引，相当于是添加第一列
    var trs = table.find('tbody tr:first-child').siblings();
    for (var q = 0; q < trs.length; q++) {
        var tr = trs[q];
        tdHtml = '<td>' + (q + 1) + '</td>';
        $(tr).prepend(tdHtml);
    }
}

/**
 * 删除表格的索引
 */
function deleteIndex(table) {
    //删除表格的行索引，相当于是删除第一列
    var trs = table.find('tbody tr:first-child').siblings();
    for (var q = 0; q < trs.length; q++) {
        var tr = trs[q];
        $(tr).find('td:first-child').remove();
    }
    //删除表格的列索引，相当于是删除第一行
    table.find('tbody tr:first-child').remove();

}

//添加
function add(odj) {
    var table = $(odj).parent().find('table');
    var freedomParamCount = table.find('tr').length;
    var tdCount = table.find('tr:eq(0) th').length;
    var tds = '';
    for (var i = 0; i < tdCount; i++) {
        if (i != (tdCount - 1)) {
            tds += '<td style="padding: 0;"><input type="text" style="border: none"></td>';
        } else {
            tds += '<td><a href="javascript:void(0);" onclick="del(this)" >&nbsp;&nbsp;&nbsp;&nbsp;删除</a></td>';
        }
    }
    var trHtml = '<tr>' + tds + '</tr>';
    table.append(trHtml);
    var firstTd = table.find('tr:eq(' + freedomParamCount + ') td:eq(0) input');
    firstTd.val(freedomParamCount);
    firstTd.css('text-align', 'center');
}


// 删除
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