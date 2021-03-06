<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>项目管理</title>

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/index.css">
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header" style="background-image: url('img/表头渐变背景.png')">

        <a href="index.jsp" class="logo" style="background-image: url('img/表头渐变背景.png')">
            <span class="logo-mini"><b>A</b>LT</span>

        </a>

        <nav class="navbar navbar-static-top" style="background-image: url('img/表头渐变背景.png') ">
            <a href="#"  data-toggle="push-menu" class="a11">
                <img src="img/侧边栏拉手.png" >
            </a>
            <img src="img/矢量智能对象.png"  class="img1">
            <!--右上角导航栏-->
            <div class="navbar-custom-menu" style="width:25%;">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                            <i><img src="img/主页.png" ></i>
                        </a>
                    </li>
                    <!--通知-->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="width:70px">
                            <img src="img/通知.png" >
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
                                            <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
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
    <!--左侧导航兰-->
    <aside class="main-sidebar" style="background-color: white" id="page1" >
        <ul class="sidebar-menu" data-widget="tree" >
            <li class="treeview" style="background-image: url('img/表头渐变背景.png'); ">
                <a href="#">
                    <i><img src="img/检测.png" class="imgs1"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="spans" >检测工作管理</span>
                    <span>
                 <i class="glyphicon glyphicon-chevron-down" id="i"></i>
            </span>
                </a>
                <ul class="treeview-menu" style="background-color: white" >
                    <li><a href="register" ><div class="div1" >业务登记</div></a></li><br>
                    <li><a href="task" ><div class="div1">业务审核</div></a></li><br>
                    <li><a href="sample" ><div class="div1">样品管理</div></a></li><br>
                    <li><a href="task" ><div class="div1">任务分配</div></a></li><br>
                    <li><a href="record_entry" ><div class="div1">记录录入</div></a></li><br>
                    <li><a href="task" ><div class="div1">记录审核</div></a></li><br>
                    <li><a href="task" ><div class="div1">报告编制</div></a></li><br>
                    <li><a href="task" ><div class="div1">报告审核</div></a></li><br>
                    <li><a href="task" ><div class="div1">报告审批</div></a></li><br>
                    <li><a href="task" ><div class="div1">归档打印</div></a></li><br>

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
                    <li><a href="personnel"><div class="div1">人员管理</div></a></li>    <br>
                    <li><a href="task"><div class="div1">设备管理</div></a></li>    <br>
                    <li><a href="task"><div class="div1">材料管理</div></a></li>    <br>
                    <li><a href="task"><div class="div1">试剂管理</div></a></li>    <br>
                    <li><a href="task"><div class="div1">环境管理</div></a></li>    <br>
                    <li><a href="task"><div class="div1">客户管理</div></a></li>    <br>

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
                    <li><a href="task"><div class="div1">综合查询</div></a></li>          <br>

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
                    <li><a href="task"><div class="div1">统计分析</div></a></li>          <br>
                    <li><a href="monitoring_data"><div class="div1">检测数据统计</div></a></li>          <br>

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
                    <li><a href="analysis"><div class="div1">数据采集</div></a></li>     <br>
                    <li><a href="task"><div class="div1">信息公告</div></a></li>   <br>

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
                    <li><a href="task"><div class="div1">仪器接口定义</div></a></li> <br>
                    <li><a href="task"><div class="div1">计划模板定义</div></a></li> <br>
                    <li><a href="task"><div class="div1">权限定义</div></a></li> <br>
                    <li><a href="task"><div class="div1">表单定义</div></a></li> <br>
                    <li><a href="task"><div class="div1">查询定义</div></a></li> <br>
                    <li><a href="task"><div class="div1">工作流程定义</div></a></li> <br>
                    <li><a href="number"><div class="div1">编号定义</div></a></li> <br>
                    <li><a href="template"><div class="div1">业务模板定义</div></a></li> <br>
                    <li><a href="interface"><div class="div1">属性定义</div></a></li> <br>
                    <li><a href="task"><div class="div1">检测能力库定义</div></a></li> <br>
                    <li><a href="contaminated"><div class="div1">污染源库</div></a></li> <br>
                    <li><a href="project"><div class="div1">项目管理</div></a></li> <br>

                </ul>
            </li>

        </ul>
    </aside>


    <!--end-->


    <div class="content-wrapper">

        <section class="content">

            <div class="row">
                <!--快捷按钮-->
                <div class="row">
                    <section class="col-lg-12 connectedSortable">
                        <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs pull-right">
                                <li class="pull-left header"><h6><b>快捷按钮</b></h6></li>
                            </ul>

                            <div style="height: 120px"><br>


                                <button  class="boot">
                                    <img src="img/另存.png" ><br>保存
                                </button>

                                <button class="boot">
                                    <img src="img/删除.png" ><br>删除
                                </button>

                                <button class="boot">
                                    <img src="img/重命名.png" ><br>修改
                                </button>

                                <button class="boot">
                                    <a href="index.jsp"> <img src="img/返回主页.png" width="85%" height="85%">返回主页</a>
                                </button>

                            </div>
                        </div>

                        <br>

                    </section>
                    <!--end-->
                <!-- 表单区域-->
                <div class="nav-tabs-custom">
                    <section class="col-lg-4 connectedSortable">
                        <div class="nav-tabs-custom">
                            <div style="height: 670px">
                                <div class="col-lg-12 col-xs-12"  >
                                    <!-- small box -->
                                    <div  style="overflow-x: scroll;overflow-y: scroll;">

                                        <div style="height: 670px">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th>类别</th>
                                                    <th>代码</th>
                                                    <th>名称</th>
                                                </tr>
                                                <tr>
                                                <td>检测项目</td>
                                                <td>W_135</td>
                                                <td>1,1,1-三氦乙烷</td>
                                            </tr>
                                                <tr>
                                                <td></td>
                                                <td>W_146</td>
                                                <td>1,1-二氦乙烷</td>
                                            </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_150</td>
                                                    <td>1,2-三氦苯</td>
                                                </tr>
                                                <tr>
                                                <td></td>
                                                <td>W_134</td>
                                                <td>1,1,1-二氦乙烷</td>
                                            </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_147</td>
                                                    <td>1,2-二氦乙烯</td>
                                                </tr>
                                                <tr>
                                                <td></td>
                                                <td>W_151</td>
                                                <td>1,1-二氦乙烯</td>
                                            </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_117</td>
                                                    <td>2,4,6-三氦酚</td>
                                                </tr>
                                                <tr>
                                                <td></td>
                                                <td>W_116</td>
                                                <td>2,4-二氦酚</td>
                                            </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_242</td>
                                                    <td>2,4-二硝基氦苯</td>
                                                </tr>
                                                <tr>
                                                <td></td>
                                                <td>W_1</td>
                                                <td>pH值</td>
                                            </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_134</td>
                                                    <td>1,1,1-二氦乙烷</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_147</td>
                                                    <td>1,2-二氦乙烯</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_151</td>
                                                    <td>1,1-二氦乙烯</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_117</td>
                                                    <td>2,4,6-三氦酚</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_116</td>
                                                    <td>2,4-二氦酚</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_242</td>
                                                    <td>2,4-二硝基氦苯</td>
                                                </tr>
                                                <tr>
                                                    <td></td>
                                                    <td>W_150</td>
                                                    <td>1,2-三氦苯</td>
                                                </tr>


                                            </table>


                                        </div>
                                    </div>
                                </div>
                        </div>
                        <br>

                    </section>
                    <section class="col-lg-5 connectedSortable">
                        <div class="nav-tabs-custom">


                            <div style="height: 670px">
                                <div class="col-lg-12 col-xs-12"  >
                                    <!-- small box -->
                                    <div  style="overflow-x: scroll;overflow-y: scroll;">

                                        <div style="height: 670px">
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th>判断标准库项目代码</th>
                                                    <th>判断标准库名称</th>
                                                    <th>能力表项目名称</th>
                                                </tr>
                                                <tr><td>W_2</td><td>色度</td><td>色度</td></tr>
                                                <tr><td>00470003690</td><td>水温</td><td>水温</td></tr>
                                                <tr><td>流速</td><td>流速</td><td>流速</td></tr>
                                                <tr><td>流量</td><td>流量</td><td>流量</td></tr>
                                                <tr><td>004254000361</td><td>臭味和</td><td>臭味和</td></tr>
                                                <tr><td>W_226</td><td>浊度</td><td>浊度</td></tr>
                                                <tr><td>004720003693</td><td>肉眼可见</td><td>肉眼可见</td></tr>
                                                <tr><td>004720003694</td><td>外观</td><td>外观</td></tr>
                                                <tr><td>W_1</td><td>pH值</td><td>pH值</td></tr>
                                                <tr><td>004720003695</td><td>电导率</td><td>电导率</td></tr>
                                                <tr><td>004720003696</td><td>透明度</td><td>透明度</td></tr>
                                                <tr><td>W_3</td><td>悬浮物</td><td>悬浮物</td></tr>
                                                <tr><td>004720003697</td><td>不可滤残渣</td><td>不可滤残渣</td></tr>
                                                <tr><td>004720003698</td><td>总残渣</td><td>可滤残渣</td></tr>
                                                <tr><td>004720003699</td><td>可滤残渣</td><td>可滤残渣</td></tr>
                                                <tr><td>W_209</td><td>溶解性总固体</td><td>溶解性总固体</td></tr>
                                                <tr><td>004720003700</td><td>矿化度</td><td>矿化度</td></tr>
                                                <tr><td>全盐量</td><td>全盐量</td><td>全盐量</td></tr>
                                                <tr><td>W_24</td><td>六价铬</td><td>六价铬</td></tr>
                                                <tr><td>W_23</td><td>总铬</td><td>总铬</td></tr>
                                                <tr><td>W_29</td><td>总铜</td><td>铜</td></tr>
                                            </table>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                    </section>
                    <section class="col-lg-3 connectedSortable">
                        <div class="nav-tabs-custom">


                            <div style="height: 670px">
                                <div class="col-lg-12 col-xs-12"  >
                                    <!-- small box -->
                                    <div  style="overflow-x: scroll;overflow-y: scroll;">

                                        <div style="height: 670px">
                                            <table class="table table-bordered">
                                                <tr><th>名称</th></tr>
                                                <tr><td>采样</td></tr>
                                                <tr><td>水温</td></tr>
                                                <tr><td>流速</td></tr>
                                                <tr><td>流量</td></tr>
                                                <tr><td>色度</td></tr>
                                                <tr><td>臭味和</td></tr>
                                                <tr><td>浊度</td></tr>
                                                <tr><td>肉眼可见</td></tr>
                                                <tr><td>外物</td></tr>
                                                <tr><td>pH值</td></tr>
                                                <tr><td>电导率</td></tr>
                                                <tr><td>透明度</td></tr>
                                                <tr><td>悬浮物</td></tr>
                                                <tr><td>不可滤残渣</td></tr>
                                                <tr><td>总残渣</td></tr>
                                                <tr><td>可滤残渣</td></tr>
                                                <tr><td>溶解性总固体</td></tr>
                                                <tr><td>矿化度</td></tr>
                                                <tr><td>全盐量</td></tr>
                                                <tr><td>六价铬</td></tr>
                                            </table>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br>

                    </section>
                </div>
                <!--end-->

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
</body>
</html>
