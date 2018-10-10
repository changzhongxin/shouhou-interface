<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>首厚智能</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/analysis.css">
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <link rel="stylesheet" href="easyui/easyui.css"/>
    <link rel="stylesheet" href="easyui/icon.css"/>
    <style>
        #table1 tr td,th{
            white-space: nowrap;
            width: auto;
        }
    </style>
</head>


<body class="hold-transition skin-blue sidebar-mini">

<script type="text/javascript">

    window.onload = function () {
        var tr = document.getElementsByTagName("tr");
        for (var i = 0; i < tr.length; i++) {
            bgcChange(tr[i]);
        }
// 鼠标移动改变背景,可以通过给每行绑定鼠标移上事件和鼠标移除事件来改变所在行背景色。
    }

    function bgcChange(obj) {
        obj.onmouseover = function () {
            obj.style.backgroundColor = "#f2f2f2";
        }
        obj.onmouseout = function () {
            obj.style.backgroundColor = "#fff";
        }
    }


</script>

<div class="wrapper">

    <header class="main-header" style="background-image: url('img/表头渐变背景.png')">

        <a href="index" class="logo" style="background-image: url('img/表头渐变背景.png')">
            <span class="logo-mini"><b>A</b>LT</span>
        </a>

        <nav class="navbar navbar-static-top" style="background-image: url('img/表头渐变背景.png') ">
            <img src="img/矢量智能对象.png" class="img1">
            <!--右上角导航栏-->
            <div class="navbar-custom-menu" style="width:40%;">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="index" class="dropdown-toggle">
                            <i><img src="img/主页.png"></i>
                        </a>
                    </li>
                    <!--通知-->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="width:70px">
                            <img src="img/通知.png">
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-warning text-yellow"></i> Very long description here that
                                            may not fit into the
                                            page and may cause design problems
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 new members joined
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> You changed your username
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>


                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i><img src="img/用户.png" class="img3"></i>
                            <span class="hidden-xs" id="guanli">管理员</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    Alexander Pierce - Web Developer
                                    <small>Member since Nov. 2012</small>
                                </p>
                            </li>
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </div>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--end-->
        </nav>

    </header>


    <section class="content" style="background-color: white">
        <div class="row">

            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div style="overflow-x: scroll;">
                    <div class="div1"><a href="#" class="small-box-footer" id="a1">自由结果设置</a></div>
                    <div style="height: 200px">

                        <img src="img/圆角矩形1拷贝12.png" class="img13" onclick="add(this)">
                        <table class="table table-bordered" id="table">
                            <tr>
                                <th>序号</th>
                                <th id="rowMarkText">行标识</th>
                                <th id="rowOffset">行位移量</th>
                                <th id="colMarkText">列标识</th>
                                <th id="fileNameMark">文件名标识</th>
                                <th>操作</th>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div style="overflow: scroll;">
                    <div class="div1"><a href="#" class="small-box-footer" id="a1" )">网格结果设置</a> </div>
                    <div style="height: 200px">
                        <img src="img/圆角矩形1拷贝12.png" class="img13" onclick="add(this)">
                        <img src="img/PDF文件数据标题.png" class="bt1">
                        <table class="table table-bordered" id="table1">
                            <tr>
                                <th>序号</th>
                                <th id="rowMarkTextBegin">行标识开始</th>
                                <th id="startOffset">行开始位移量</th>
                                <th id="rowMarkNo">行标识开始编号</th>
                                <th id="rowMarkTextEnd">行标识结束</th>
                                <th id="endOffset">行结束位移量</th>
                                <th id="rowMarkEndNo">行标识结束编号</th>
                                <th>操作</th>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-xs-6">
                <!-- small box -->
                <div style="overflow: scroll;">
                    <div class="div1"><a href="#" class="small-box-footer" id="a1" )">解析结果设置</a></div>
                    <div style="height: 200px">
                        <img src="img/圆角矩形1拷贝12.png" class="img13" onclick="add(this)">
                        <table class="table table-bordered" id="table2">
                            <tr>
                                <th>序号</th>
                                <th id="colMark">列标识</th>
                                <th id="gridNo">网格配置序号</th>
                                <th>操作</th>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-12 col-xs-12">
                <!-- small box -->
                <div>
                    <div class="div1"><a href="#" class="small-box-footer" id="a1">功能按钮</a></div>
                    <div style="height: 10px;">

                        <%--<input class="file" type="file" name="file" id="file" onclick="openPdf()">--%>
                        <button class="img14">清除数据</button>
                        <button class="img15">提取PDF图片</button>
                        <button class="img16" onclick="parseData()" style="width:7%;margin-left:10px;">解析数据</button>

                        <a href="javascript:void (0);" class="file">打开PDF文件
                            <input type="file" name="file" id="file">
                            <input type="hidden" id="htmlPath" value="">
                        </a>

                    </div>
                </div>
            </div>


            <ul id="myTab" class="nav nav-tabs">
                <li><a href="#ios" data-toggle="tab">
                    <button id="showDataTable" type="button" class="btn btn-primary" onclick="showDataTable()">表格视图
                    </button>
                </a></li>

                <li class="active"><a href="#home" data-toggle="tab">
                    <button id="showDataText" type="button" class="btn btn-primary" onclick="showDataText()">文本视图
                    </button>
                </a>
                </li>


            </ul>

            <div id="myTabContent" class="tab-content">
                <%--<div class="tab-pane fade" id="ios">
                    <div class="col-md-12  col-xs-12">
                        <!-- small box -->
                        <div>


                            <div style="height: 500px">

                                <section class="content">

                                    <!--原始表格数据-->
                                    <div class="row">
                                        <section class="col-md-6 col-sm-6 col-xs-6 connectedSortable">
                                            <div class="nav-tabs-custom"
                                                 style="overflow-x: scroll;height: 490px;width: 95%;position: absolute;top: 20%">

                                                <ul class="nav nav-tabs pull-right">
                                                    <li class="pull-left header"><h5><b>表格数据区域</b></h5></li>
                                                </ul>

                                                <div>
                                                    <table class="table table-bordered">
                                                       <tbody></tbody>
                                                    </table>
                                                </div>
                                            </div>

                                        </section>
                                        <br>
                                        <!--end-->


                                        <!--配置解析结果-->
                                        <section class="col-md-6 col-sm-6 col-xs-6 connectedSortable">
                                            <div class="nav-tabs-custom" style="overflow-x: scroll;">
                                                <ul class="nav nav-tabs pull-right">
                                                    <li class="pull-left header"><h5><b>配置解析结果</b></h5></li>
                                                </ul>
                                                <div>
                                                    <div style="position: relative; height: 440px;">
                                                        <table class="table table-bordered">
                                                            <tbody></tbody>
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>
                                            <br>
                                        </section>
                                        <!--end-->

                                    </div>

                                </section>
                            </div>
                        </div>
                    </div>
                </div>--%>
                <div class="tab-pane fade in active" id="home">

                    <div class="col-md-12  col-xs-12">
                        <!-- small box -->
                        <div>
                            <div style="height: 500px">

                                <section class="content">

                                    <!--原始表格数据-->
                                    <div class="row">
                                        <section class="col-md-6 col-sm-6 col-xs-6 connectedSortable">
                                            <div class="nav-tabs-custom"
                                                 style="overflow-x: scroll;height: 490px;width: 95%;position: absolute;top: 20%">

                                                <ul class="nav nav-tabs pull-right">
                                                    <li class="pull-left header"><h5><b>数据区域</b></h5></li>
                                                </ul>

                                                <iframe id="text_iframe" name="text_iframe" src=""
                                                        style="width: 100%;height: 90%;"></iframe>
                                                <iframe id="table_iframe" name="table_iframe" src="pdfhtml/table.html"
                                                        style="width: 100%;height: 90%;display: none"></iframe>
                                            </div>

                                        </section>
                                        <br>
                                        <!--end-->


                                        <!--配置解析结果-->
                                        <section class="col-md-6 col-sm-6 col-xs-6 connectedSortable">
                                            <div class="nav-tabs-custom" style="overflow-x: scroll;">
                                                <ul class="nav nav-tabs pull-right">
                                                    <li class="pull-left header"><h5><b>配置解析结果</b></h5></li>
                                                </ul>
                                                <div>
                                                    <div style="position: relative; height: 440px;">
                                                        <table id="result_table" class="table table-bordered">
                                                            <tbody></tbody>
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>
                                            <br>
                                        </section>
                                        <!--end-->

                                    </div>

                                </section>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

        </div>
    </section>

    <input type="hidden" value="${param.uuid}" id="uuid">
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script>
        $(function () {
            $('#myTab li:eq(1) button').tab('show');
        });
    </script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="dist/js/adminlte.min.js"></script>
    <script src="dist/js/pages/dashboard.js"></script>
    <script src="dist/js/demo.js"></script>
    <script src="js/ajaxfileupload.js"></script>
    <script src="js/parsePdf.js?a=5"></script>
    <script src="easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="easyui/easyui-lang-zh_CN.js"></script>
</body>
</html>
