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
      <div class="navbar-custom-menu" style="width:40%;">
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
                  <img src="img/新建1.png" ><br>新建
                </button >
                <button  class="boot">
                  <img src="img/删除数据1.png" ><br>删除数据
                </button>
               <button class="boot">
                  <img src="img/另存1.png" ><br>保存数据
                </button>
               <button class="boot">
                  <img src="img/重命名1.png" ><br>重命名
                </button>
                <button class="boot">
                  <img src="img/加锁.png" ><br>加锁
                </button>
                <button class="boot">
                  <img src="img/解锁.png" ><br>解锁
                </button>
                <button class="boot">
                  <img src="img/预览.png" ><br>预览
                </button>
                <button class="boot">
                  <img src="img/公式.png" ><br>定义模板公式
                </button>
                <button class="boot">
                  <img src="img/初始化.png" ><br>初始化所有
                </button>



              </div>
            </div>

          <br>

        </section>
        <!--end-->

          <!-- 弹出框-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header"  style="background-image: url('./img/表头渐变背景.png')">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><img src="img/圆角矩形1拷贝11.png" ></button>
                <h4><img src="img/新建属性小图标.png" > 新建属性</h4>
              </div>
              <form action="#">
                <br> <br>
               <span style="position: relative;left: 15%;font-size: 17px"> 属性名称：<input type="text" class="form-text"><br><br></span>
                <span style="position: relative;left: 15%;font-size: 17px"> 属性类型：<input type="text" class="form-text"><br><br></span>
                <span style="position: relative;left: 15%;font-size: 17px">属性长度：<input type="text" class="form-text"><br><br></span>
                <span style="position: relative;left: 15%;font-size: 17px">属性精度：<input type="text" class="form-text"><br><br></span>
                <br>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" style="position: relative;left: -35%;width: 130px">取消</button>
                <input type="submit" class="btn btn-primary" value="确定" style="position: absolute;left: 30%;width: 130px">
              </div>
              </form>
            </div>
          </div>
        </div>
        <!--弹出框 end-->


        <!-- 数据组-->
        <div class="nav-tabs-custom">
          <section class="col-lg-2 connectedSortable">
            <div class="nav-tabs-custom">
              <ul class="nav nav-tabs pull-right">
                <li class="pull-left header"><h5><b>数据组</b></h5></li>
              </ul>
              <div style="height: 620px">

                  <div style="position: absolute;left: 15%">
                <div id="main1" style="color:blue" onclick="document.all.child1.style.display=(document.all.child1.style.display =='none')?'':'none'" >
                  <br>
                  <img src="img/文件夹.png" >&nbsp;&nbsp;&nbsp;信息管理系统</div>
                <div id="child1" style="display:none">
                  <a href="#" style="font-size: 0.9em">&nbsp;&nbsp;&nbsp;------ <img src="img/文件拷贝.png" >&nbsp;&nbsp;&nbsp;MDB仪器</a> <br>
                  <a href="#" style="font-size: 0.9em">&nbsp;&nbsp;&nbsp;------ <img src="img/文件拷贝.png" >&nbsp;&nbsp;&nbsp;串口仪器</a> <br>
                  <a href="#" style="font-size: 0.9em">&nbsp;&nbsp;&nbsp;------ <img src="img/文件拷贝.png" >&nbsp;&nbsp;&nbsp;文本仪器</a> <br>
                  <a href="#" style="font-size: 0.9em">&nbsp;&nbsp;&nbsp;------ <img src="img/文件拷贝.png" >&nbsp;&nbsp;&nbsp;sqlserver</a>
                </div>
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
            <div class="nav-tabs-custom">
              <ul class="nav nav-tabs pull-right">
                <li class="pull-left header"><h5><b>表单设置</b></h5></li>
              </ul>
              <div style="height: 620px">
                <div class="col-lg-12 col-xs-12"  >
                  <!--配置区域-->
                  <div style="height: 260px;border-bottom: 2px solid rosybrown">
                    <div>
                      <div class="divs1">模板类型&nbsp;：<input type="text" class="text1"></div> <br>
                      <div class="divs1">树型模板&nbsp;：<input type="text" class="text1"></div> <br>
                      <div class="divs1">模板组&nbsp;：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" class="text1"></div> <br>
                      <div class="divs1">是否显示行号&nbsp;：&nbsp;<span style="position: relative;left: 1%">
                        <input type="radio" name="sex" value="1"  >是</span>
                        <span style="position: relative;left: 7%">
                          <input type="radio" name="sex" value="2"  >否</span>
                      </div>
                    </div>
                 <div style="position: absolute;right: 25%;top: 5%">
                    <div class="divs2">编辑风格&nbsp;：&nbsp;<input type="radio" name="sex" value="1">自由风格
                      &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="sex" value="2">网格风格
                    </div><br>
                    <div class="divs3">树级别参数个数&nbsp;：&nbsp;<input type="text" class="text1"></div><br>
                    <div class="divs2">更新表&nbsp;：&nbsp;<input type="text" class="text1" ></div><br>
                    <div class="divs2">标题宽&nbsp;：&nbsp;<input type="text" class="text2"><sapn style="position: relative;left: 10%">列宽：<input type="text" class="text2"></sapn></div>
                  </div>
                  </div>
                  <!--end-->
                  <!-- 表单区域 -->
                  <div  style="overflow-x: scroll;">

                    <div style="height: 300px"><br>
                      <h4 style="position: relative;left: 40%">模板字段信息</h4><br>
                      <table class="table table-bordered">
                        <tr>
                          <th>序号</th>
                          <th>标题名称</th>
                          <th>字段名称</th>
                          <th>排序</th>
                          <th>属性名称</th>
                          <th>属性类型</th>
                          <th>属性长度</th>
                          <th>属性精度</th>
                        </tr>
                        <tr>
                          <td>1</td>
                          <td>业务单状态</td>
                          <td>业务单状态</td>
                          <td>升序</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>业务单状态</td>
                          <td>业务单状态</td>
                          <td>降序</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>

                      </table>

                      <div style="position: absolute;left: 25%;top:90%;">
                       <button>首页</button>
                       <button><<< </button>
                       <button>1</button>
                       <button>2</button>...
                       <button>20</button>
                       <button>>>> </button>
                       <button>尾页</button>
                          共20页
                        <span>跳转到<input type="text" style="border: 1px solid black;width: 30px">页</span>
                        <button type="button" class="btn btn-info">确定</button>
                      </div>

                    </div>
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
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<script src="dist/js/adminlte.min.js"></script>
<script src="dist/js/pages/dashboard.js"></script>
<script src="dist/js/demo.js"></script>
</body>
</html>
