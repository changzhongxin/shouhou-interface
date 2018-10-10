$(function () {
    $('#beishu').mouseout(function () {
        var beishu = parseInt($(this).text());
        var ben=$('.ben');
        $(ben[1]).text(parseFloat($(ben[0]).text())*beishu);

        var jiaben=$('.jiaben');
        $(jiaben[1]).text(parseFloat($(jiaben[0]).text())*beishu);

        var yiben=$('.yiben');
        $(yiben[1]).text(parseFloat($(yiben[0]).text())*beishu);

        var duierjiaben=$('.duierjiaben');
        $(duierjiaben[1]).text(parseFloat($(duierjiaben[0]).text())*beishu);

        var jianerjiaben=$('.jianerjiaben');
        $(jianerjiaben[1]).text(parseFloat($(jianerjiaben[0]).text())*beishu);

        var yibinben=$('.yibinben');
        $(yibinben[1]).text(parseFloat($(yibinben[0]).text())*beishu);

        var linerjiaben=$('.linerjiaben');
        $(linerjiaben[1]).text(parseFloat($(linerjiaben[0]).text())*beishu);
    });
});