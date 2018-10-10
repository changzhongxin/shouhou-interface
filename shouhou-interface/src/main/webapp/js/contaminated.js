$(function () {
    $.post('getContaminatedTestList', function (data) {
        var tdCount = ('#contaminatedTable tr:eq(0) th').length;
        var number = $('#number').index();
        var time = $('#time').index();
        var name = $('#name').index();
        var remarks = $('#remarks').index();
        var endtime = $('#endtime').index();
        var trHtml = '';
        for (var i = 0; i < data.length; i++) {
            var numberValue = data[i].number;
            var timeValue = data[i].time;
            var nameValue = data[i].name;
            var remarksValue = data[i].remarks;
            var endtimeValue = data[i].endtime;
            var tds = '';
            for (var j = 0; j < tdCount; j++) {
                switch (j) {
                    case number:
                        tds += '<td >' + numberValue + '</td>';
                        break;
                    case time:
                        tds += '<td>' + timeValue + '</td>';
                        break;
                    case name:
                        tds += '<td>' + nameValue + '</td>';
                        break;
                    case remarks:
                        tds += '<td>' + remarksValue + '</td>';
                        break;
                    case endtime:
                        tds += '<td>' + endtimeValue + '</td>';
                        break;
                }
                trHtml = '<tr>' + tds + '</tr>';
            }
            $('#contaminatedTable').append(trHtml);
        }

        var trs = $('#contaminatedTable tr:gt(0)');
        trs.click(function () {
            location.href='contaminated-new';
            $(this).css('cursor','pointer');
        });
    }, 'json');


});