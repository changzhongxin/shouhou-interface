$(function () {
    var trs=$('#interTable tr');
    //当单击这一行时
    trs.click(function () {
        var tra = $(this);
        tra.css({'background-color': 'lightblue', 'cursor': 'pointer'});
        trs.click(function () {
            var trb = $(this);
            tra.css({'background-color': 'white', 'cursor': 'pointer'});
            trb.css({'background-color': 'lightblue', 'cursor': 'pointer'});
        });
    });
});
function selectInterface() {
    $.get('instrinter/getList', function (data) {
        for (var i = 0; i < data.length; i++) {
            var interName = data[i].interName;
            var uuid = data[i].uuid;
            $('#interTable tr:gt(' + data.length + ')').hide();
            var td = $('#interTable tr:eq(' + (i + 1) + ') td:eq(0)');
            td.text(interName);
            td.attr('uuid', uuid);
        }
    }, 'json');
}