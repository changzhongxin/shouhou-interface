<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/index.css">
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header" style="background-image: url('img/表头渐变背景.png')">

        <a href="index.jsp" class="logo" style="background-image: url('img/表头渐变背景.png')">
            <span class="logo-mini"><b>A</b>LT</span>

        </a>

        <nav class="navbar navbar-static-top" style="background-image: url('img/表头渐变背景.png') ">
            <a href="#" data-toggle="push-menu" class="a11">
                <img src="img/侧边栏拉手.png">
            </a>
            <img src="img/矢量智能对象.png" class="img1">
            <!--右上角导航栏-->
            <div class="navbar-custom-menu" style="width:25%;">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
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
    <div class="tab-content">
        <!-- Home tab content -->


    </div>
    <!--左侧导航兰-->
    <aside class="main-sidebar" style="background-color: white" id="page1">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="treeview" style="background-image: url('img/表头渐变背景.png'); ">
                <a href="#">
                    <i><img src="img/检测.png" class="imgs1"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="spans">检测工作管理</span>
                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white">
                    <li><a href="register.html">
                        <div class="div1">业务登记</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">业务审核</div>
                    </a></li>
                    <br>
                    <li><a href="sample.html">
                        <div class="div1">样品管理</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">任务分配</div>
                    </a></li>
                    <br>
                    <li><a href="record_entry.html">
                        <div class="div1">记录录入</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">记录审核</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">报告编制</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">报告审核</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">报告审批</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">归档打印</div>
                    </a></li>
                    <br>

                </ul>
            </li>

            <li class="treeview" style="background-image: url('img/表头渐变背景.png') ">
                <a href="#">
                    <i><img src="img/企业管理拷贝.png" alt=""></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="span1">资源管理</span>
                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white" style="background-color: white">
                    <li><a href="personnel.html">
                        <div class="div1">人员管理</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">设备管理</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">材料管理</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">试剂管理</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">环境管理</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">客户管理</div>
                    </a></li>
                    <br>

                </ul>
            </li>

            <li class="treeview" style="background-image: url('img/表头渐变背景.png') ">
                <a href="#">
                    <i><img src="img/查询条件拷贝.png" alt=""></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="span1">综合查询</span>
                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white">
                    <li><a href="task.html">
                        <div class="div1">综合查询</div>
                    </a></li>
                    <br>

                </ul>
            </li>

            <li class="treeview" style="background-image: url('img/表头渐变背景.png') ">
                <a href="#">
                    <i><img src="img/统计分析拷贝.png" alt=""></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="span1">统计报表</span>

                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white">
                    <li><a href="task.html">
                        <div class="div1">统计分析</div>
                    </a></li>
                    <br>
                    <li><a href="monitoring_data.html">
                        <div class="div1">检测数据统计</div>
                    </a></li>
                    <br>

                </ul>
            </li>

            <li class="treeview" style="background-image: url('img/表头渐变背景.png') ">
                <a href="#">
                    <i><img src="img/读取数据库拷贝.png" alt=""></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="span1">仪器数据采集</span>
                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white">
                    <li><a href="analysis.html">
                        <div class="div1">数据采集</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">信息公告</div>
                    </a></li>
                    <br>

                </ul>
            </li>

            <li class="treeview" style="background-image: url('img/表头渐变背景.png') ">
                <a href="#">
                    <i><img src="img/系统设置拷贝.png" alt=""></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="span1">系统定义</span>
                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white">
                    <li><a href="task.html">
                        <div class="div1">仪器接口定义</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">计划模板定义</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">权限定义</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">表单定义</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">查询定义</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">工作流程定义</div>
                    </a></li>
                    <br>
                    <li><a href="modeler.html">
                        <div class="div1">工作流定义</div>
                    </a></li>
                    <br>
                    <li><a href="number.html">
                        <div class="div1">编号定义</div>
                    </a></li>
                    <br>
                    <li><a href="template.html">
                        <div class="div1">业务模板定义</div>
                    </a></li>
                    <br>
                    <li><a href="interface.html">
                        <div class="div1">属性定义</div>
                    </a></li>
                    <br>
                    <li><a href="task.html">
                        <div class="div1">检测能力库定义</div>
                    </a></li>
                    <br>
                    <li><a href="contaminated.html">
                        <div class="div1">污染源库</div>
                    </a></li>
                    <br>
                    <li><a href="project.html">
                        <div class="div1">项目管理</div>
                    </a></li>
                    <br>

                </ul>
            </li>

        </ul>
    </aside>


    <!--end-->


    <div class="content-wrapper">

        <section class="content">

            <%--工作跟进一览表--%>
            <div class="row">
                <section class="col-lg-12 connectedSortable">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs pull-right">
                            <li class="pull-left header"><h5><b>工作跟进一览表</b></h5></li>
                        </ul>
                        <div id="workFolwContainer" style="padding-bottom: 2%">
                            <div style="width:70%;display: inline-block;margin-left: 3%;margin-top: 1%;">
                                <img width="90%" id="contentImg" src="img/index_top1.png" />
                            </div>
                            <div style="width:25%;display: inline-block;vertical-align: middle">
                                <div style="height: 30%;padding:10px;-moz-box-shadow:7px 6px 20px #808080; -webkit-box-shadow:7px 6px 20px #808080; box-shadow:7px 6px 20px #808080;">
                                    <img src="img/index_topnum1.jpg" style="width: 8%;display: inline-block;vertical-align: middle"/>
                                    <div class="changeBtn" num="1" style="display: inline-block;font-size: 14px;width: 80%;vertical-align: middle;margin-left: 10px;cursor: pointer">
                                        <span>单位名称：重庆安福汽车有限公司</span><br>
                                        <span>检测项目：污水、噪音</span><br>
                                        <span>项目开始时间：2018.05.14</span>
                                    </div>
                                </div>
                                <div style="margin-top:20px;height: 30%;padding:10px;-moz-box-shadow:7px 6px 20px #808080; -webkit-box-shadow:7px 6px 20px #808080; box-shadow:7px 6px 20px #808080;">
                                    <img src="img/index_topnum2.png" style="width: 8%;display: inline-block;vertical-align: middle"/>
                                    <div class="changeBtn" num="2" style="display: inline-block;font-size: 14px;width: 80%;vertical-align: middle;margin-left: 10px;cursor: pointer">
                                        <span>单位名称：重庆龙山社区卫生中心</span><br>
                                        <span>检测项目：污水、噪音</span><br>
                                        <span>项目开始时间：2018.05.18</span>
                                    </div>
                                </div>
                                <div style="margin-top:20px;height: 30%;padding:10px;-moz-box-shadow:7px 6px 20px #808080; -webkit-box-shadow:7px 6px 20px #808080; box-shadow:7px 6px 20px #808080;">
                                    <img src="img/index_topnum3.jpg" style="width: 8%;display: inline-block;vertical-align: middle"/>
                                    <div class="changeBtn" num="3" style="display: inline-block;font-size: 14px;width: 80%;vertical-align: middle;margin-left: 10px;cursor: pointer">
                                        <span>单位名称：重庆鋆洁清洗有限公司</span><br>
                                        <span>检测项目：污水、噪音</span><br>
                                        <span>项目开始时间：2018.05.18</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <!--end-->
                </section>
            </div>
            <!--分析柱状图-->
            <div class="row">
                <section class="col-lg-7 connectedSortable">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs pull-right">
                            <li class="pull-left header"><h5><b>分析柱状图</b></h5></li>
                        </ul>
                        <div>
                            <div style="position: relative; height: 500px;width:200px;">
                                <img src="img/分析柱状图.png" height="99%">
                            </div>
                        </div>
                    </div>
                    <br>
                    <!--end-->

                    <!--公告栏-->
                    <div class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>
                            <h3 class="box-title">公告栏</h3>
                        </div>
                        <div class="box-body chat" id="chat-box">

                            <div><img src="img/公告.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中</sapn>
                                <a href="#" class="a12">更多>>></a>
                            </div>
                            <br>
                            <div><img src="img/公告.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中</sapn>
                                <a href="#" class="a12">更多>>></a>
                            </div>
                            <br>
                            <div><img src="img/公告.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中</sapn>
                                <a href="#" class="a12">更多>>></a>
                            </div>
                            <br>
                            <div><img src="img/公告.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中</sapn>
                                <a href="#" class="a12">更多>>></a>
                            </div>
                            <br>


                        </div>
                    </div>
                    <!--end-->
                </section>


                <section class="col-lg-5 connectedSortable">

                    <!-- 分析饼状图-->
                    <div style="background-color: white">
                        <div class="box-header">
                            <i class="fa fa-map-marker"></i>
                            <h1 class="box-title">分析饼状图</h1>
                        </div>
                        <div>
                            <div id="world-map" style="height: 350px; width: 100%;">
                                <img src="img/分析饼状图.png" width="70%" height="90%">
                            </div>
                        </div>
                    </div>
                    <br>

                    <!--end-->

                    <!--工作一览表-->
                    <div style="background-color: white">
                        <div class="box-header">
                            <i class="fa fa-th"></i>

                            <h3 class="box-title">工作一览表</h3>

                        </div>
                        <div class="box-body border-radius-none">
                            <div class="chart" id="line-chart" style="height: 350px;">
                                <div class="box-body chat" id="chat-box1">

                                    <div><img src="img/工作.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中
                                    </sapn>
                                        <a href="#" class="a12">更多>>></a>
                                    </div>
                                    <br>
                                    <div><img src="img/工作.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中
                                    </sapn>
                                        <a href="#" class="a12">更多>>></a>
                                    </div>
                                    <br>
                                    <div><img src="img/工作.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中
                                    </sapn>
                                        <a href="#" class="a12">更多>>></a>
                                    </div>
                                    <br>
                                    <div><img src="img/工作.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sapn>今日新闻：XXX公司检测情况正在进行中
                                    </sapn>
                                        <a href="#" class="a12">更多>>></a>
                                    </div>
                                    <br>


                                </div>
                            </div>
                        </div>
                    </div>
                    <br>

                    <!-- end -->

                </section>

            </div>

        </section>
    </div>


    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
    <script>
        $.widget.bridge('uibutton', $.ui.button);
    </script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/raphael/raphael.min.js"></script>
    <script src="bower_components/morris.js/morris.min.js"></script>
    <script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
    <script src="bower_components/moment/min/moment.min.js"></script>
    <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="bower_components/fastclick/lib/fastclick.js"></script>
    <script src="dist/js/adminlte.min.js"></script>
    <script src="dist/js/pages/dashboard.js"></script>
    <script src="dist/js/demo.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".changeBtn").click(function (data) {
                var num=$(this).attr("num");
                $("#contentImg").attr("src","img/index_top"+num+".png");
            });
        });
    </script>
</body>
</html>
