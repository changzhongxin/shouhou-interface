/**
 * 获取整个html页面的json数据
 * @returns {Array}
 */
function getPageJson() {
    var pages = $('.page');
    var pageJson = [];
    $.each(pages, function () {
        //将html中的数据提取成json格式的数组
        var rowJson = [];
        var rows = $(this).find('.p');
        for (var i = 0; i < rows.length; i++) {
            var topValue = $(rows[i]).css('top');
            var leftValue = $(rows[i]).css('left');
            var id = rows[i].id;
            var intId = parseInt(id.substring(1, id.length));
            var textValue = $(rows[i]).text();
            var topFloatValue = getFloatValue(topValue);
            var leftFloatValue = getFloatValue(leftValue);
            rowJson.push({
                id: intId,
                topFloatValue: topFloatValue,
                leftFloatValue: leftFloatValue,
                textValue: textValue
            });
        }
        //根据top值对json数组进行排序，默认为升序
        rowJson.sort(sequenceTop);

        //对json数组进行分组，分出行数据
        var map = {},
            groupJson = [];
        for (var i = 0; i < rowJson.length; i++) {
            var row = rowJson[i];
            if (map[row.topFloatValue] == undefined) { //如果为undefined，就添加一个以topFloatValue为键的数组，用来存放行数据
                groupJson.push({trKey: row.topFloatValue, trData: [row]});
                map[row.topFloatValue] = row;//为map[row.topFloatValue]添加值，防止添加重复的键
            } else {
                for (var j = 0; j < groupJson.length; j++) {
                    var groupRow = groupJson[j];
                    if (row.topFloatValue == groupRow.trKey) {//如果groupJson数组中已经存在以topFloatValue为键的数组，则在此行中添加行数据
                        groupRow.trData.push(row);
                    }
                }
            }
        }

        //根据left值对json数组再次进行排序，默认为升序
        for (var t = 0; t < groupJson.length; t++) {
            var trData = groupJson[t].trData;
            if (trData.length > 1) {
                trData.sort(sequenceLeft);
            }
        }

        //将groupJson中的数据根据业务需求进行特殊处理
        for (var i = 0; i < groupJson.length; i++) {
            var trData = groupJson[i].trData;
            for (var j = 0; j < trData.length; j++) {
                var tv = trData[j].textValue;
                if (tv.length > 1) {
                    var index = tv.lastIndexOf('-');
                    if (trData.length > 1 && index != -1 && index == (tv.length - 1) && (j + 1) <= trData.length) {
                        tv += trData[j + 1].textValue;
                        trData[j].textValue = tv;
                        trData[j + 1].textValue = '';
                    }
                }
            }
        }

        //将分组后的json添加进pageJson中
        var pageId = this.id;
        pageJson.push({pageId: pageId, pageData: groupJson});
    });
    return pageJson;
}

/**
 * 根据top值进行排序的方法
 * @param {Object} a
 * @param {Object} b
 */
function sequenceTop(a, b) {
    return a.topFloatValue - b.topFloatValue;
}

/**
 * 根据left值进行排序的方法
 * @param {Object} a
 * @param {Object} b
 */
function sequenceLeft(a, b) {
    return a.leftFloatValue - b.leftFloatValue;
}

/**
 * 获取绝对定位的数值
 * @param {Object} value
 */
function getFloatValue(value) {
    var pxIndex = value.lastIndexOf('px');
    var strValue = value.substring(0, pxIndex);
    var floatValue = parseFloat(strValue);
    return floatValue;
}