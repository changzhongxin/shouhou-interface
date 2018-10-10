<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>人员管理</title>

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="dist/css/index.css">
  <link rel="stylesheet" href="dist/css/test.css">
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

      <!--快捷按钮-->
      <div class="row">
        <section class="col-lg-12 connectedSortable">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs pull-right">
              <li class="pull-left header"><h6><b>快捷按钮</b></h6></li>
            </ul>

              <div style="height: 120px"><br>
                <button class="boot">
                  <img src="img/新建属性.png" ><br>新建部门
                </button>
               <button class="boot">
                  <img src="img/另存1.png" ><br>保存数据
                </button>
               <button class="boot">
                  <img src="img/重命名1.png" ><br>修改密码
                </button>
                <button class="boot">
                  <img src="img/初始化.png" ><br>刷新
                </button>
                <button class="boot">
                  <img src="img/解析设置.png" ><br>岗位人员
                </button>
                <button class="boot">
                  <img src="img/删除数据.png" ><br>删除数据
                </button>
                <button class="boot">
                  <img src="img/重命名.png" ><br>重命名
                </button>
                <button class="boot">
                  <a href="index.jsp"> <img src="img/返回主页.png" width="85%" height="85%">返回主页</a>
                </button>




              </div>
            </div>

          <br>

        </section>
        <!--end-->


        <!-- 数据组-->
        <div class="nav-tabs-custom">
          <section class="col-lg-2 connectedSortable">
            <div class="nav-tabs-custom">
              <ul class="nav nav-tabs pull-right">

              </ul>
              <div style="height: 700px"><br>

                <div id="tree" class="ztree" style="width:260px; overflow:auto;position: relative;left: 15%;">

              </div>


              </div>
            </div>
            <br>

          </section>
        </div>
        <!--end-->

        <!-- 表单设置-->
        <div class="nav-tabs-custom">
          <section class="col-lg-10 connectedSortable">
            <div class="nav-tabs-custom"><br>
              <div style="height: 700px">
                <div class="col-lg-12 col-xs-12"  >
                  <!--配置区域-->
                  <div style="height: 350px;border-bottom: 2px solid rosybrown">
                    <div>

                      <div class="div-s">人员名称&nbsp;：<input type="text" class="text11" value="系统管理员"></div> <br>
                      <div class="div-s">&emsp;登陆名&nbsp;：<input type="text" class="text11" value="admin"></div> <br>
                      <div class="div-s">出生年月&nbsp;：<input type="text" class="text11" value="1990年2月23日"></div> <br>
                      <div class="div-s">技术职称：<input type="text" class="text11"></div> <br>
                      <div class="div-s">毕业时间：<input type="text" class="text11" value="2010年7月23日"></div> <br>
                      <div class="div-s">联系电话：<input type="text" class="text11" value="13666524254"></div> <br>

                    </div>
                 <div style="position: absolute;right: 25%;top: 1%">
                   <div class="div1-s">&emsp;&emsp;&emsp;&emsp;性别：<input type="text" class="text11"></div><br>
                    <div class="div1-s">&emsp;&emsp;&emsp;&emsp;民族：<input type="text" class="text11"></div><br>
                    <div class="div1-s">&emsp;&emsp;毕业院校：<input type="text" class="text11" ></div><br>
                   <div class="div1-s">&emsp;&emsp;&emsp;&emsp;学历：<input type="text" class="text11"></div><br>
                   <div class="div1-s">参加工作时间：<input type="text" class="text11" value="2011年3月23日"></div><br>
                   <div class="div1-s">&emsp;&emsp;&emsp;&emsp;备注：<input type="text" class="text11"></div><br>
                  </div>
                  </div>
                  <!--end-->
                  <!-- 表单区域 -->
                  <div  style="overflow-x: scroll;overflow-y: scroll;">

                    <div style="height: 300px"><br>

                      <table class="table table-bordered">
                        <tr>
                          <th>序号</th>
                          <th>持证类型</th>
                          <th>级别</th>
                          <th>证号</th>
                          <th>取证时间</th>
                          <th>毕业证有效截止日</th>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td>毕业证</td>
                          <td>本科</td>
                          <td>2330251222546901</td>
                          <td>2016年6月24日</td>
                          <td>2036年6月25日</td>
                        </tr>


                      </table>



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

  <link rel="stylesheet" href="zTree_v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
  <script type="text/javascript" src="zTree_v3/js/jquery-1.4.4.min.js"></script>
  <script type="text/javascript" src="zTree_v3/js/jquery.ztree.core.js"></script>
  <SCRIPT type="text/javascript" >
      var zTree;
      var demoIframe;
      var setting = {
          data: {
              simpleData: {
                  enable:true,
                  idKey: "id",
                  pIdKey: "pId",
                  rootPId: ""
              }
          },
      };
      var zNodes =[
          {id:1, pId:0, name:" 检测工作管理", open:true},
          {id:101, pId:1, name:"业务登记", file:"core/standardData"},
          {id:102, pId:1, name:"业务审核", file:"core/simpleData"},
          {id:103, pId:1, name:"样品管理", file:"core/noline"},
          {id:104, pId:1, name:"任务分配", file:"core/noicon"},
          {id:105, pId:1, name:"记录录入", file:"core/custom_icon"},
          {id:106, pId:1, name:"记录审核", file:"core/custom_iconSkin"},
          {id:107, pId:1, name:"报告编制", file:"core/custom_font"},
          {id:115, pId:1, name:"报告审核", file:"core/url"},
          {id:108, pId:1, name:"报告审批", file:"core/async"},
          {id:109, pId:1, name:"归档打印", file:"core/async_fun"},


          {id:2, pId:0, name:" 资源管理", open:false},
          {id:201, pId:2, name:"人员管理", file:"excheck/checkbox"},
          {id:206, pId:2, name:"设备管理", file:"excheck/checkbox_nocheck"},
          {id:207, pId:2, name:"材料管理", file:"excheck/checkbox_chkDisabled"},
          {id:208, pId:2, name:"试剂管理", file:"excheck/checkbox_halfCheck"},
          {id:202, pId:2, name:"环境管理", file:"excheck/checkbox_count"},
          {id:203, pId:2, name:"客户管理", file:"excheck/checkbox_fun"},


          {id:3, pId:0, name:"综合查询", open:false},
          {id:301, pId:3, name:"综合查询", file:"exedit/drag"},


          {id:4, pId:0, name:" 统计报表", open:false},
          {id:401, pId:4, name:"统计分析", file:"bigdata/common"},
          {id:402, pId:4, name:"检测数据统计", file:"bigdata/diy_async"},


          {id:5, pId:0, name:" 仪器数据采集", open:false},
          {id:501, pId:5, name:"数据采集", file:"super/oneroot"},
          {id:502, pId:5, name:"信息公告", file:"super/oneclick"},

          {id:6, pId:0, name:" 系统定义", open:false},
          {id:601, pId:6, name:"仪器接口定义", file:"exhide/common"},
          {id:602, pId:6, name:"计划模板定义", file:"exhide/checkbox"},
          {id:603, pId:6, name:"权限定义", file:"exhide/radio"},
          {id:604, pId:6, name:"表单定义", file:"exhide/radio"},
          {id:605, pId:6, name:"查询定义", file:"exhide/radio"},
          {id:606, pId:6, name:"工作流程定义", file:"exhide/radio"},
          {id:607, pId:6, name:"编号定义", file:"exhide/radio"},
          {id:608, pId:6, name:"业务模板定义", file:"exhide/radio"},
          {id:609, pId:6, name:"属性定义", file:"exhide/radio"},
          {id:610, pId:6, name:"检测能力库定义", file:"exhide/radio"},
          {id:611, pId:6, name:"污染源库", file:"exhide/radio"},
          {id:612, pId:6, name:"项目管理", file:"exhide/radio"}
      ];
      $(document).ready(function(){
          var t = $("#tree");
          t = $.fn.zTree.init(t, setting, zNodes);
          demoIframe = $("#testIframe");
          demoIframe.bind("load", loadReady);
          var zTree = $.fn.zTree.getZTreeObj("tree");
          zTree.selectNode(zTree.getNodeByParam("id", 101));
      });
  </SCRIPT>

</body>
</html>
