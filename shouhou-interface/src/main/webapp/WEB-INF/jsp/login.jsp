<%@ page language="java" contentType="text/html; charset=UTF-8"
                                pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title></title>

  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
    <link rel="stylesheet" href="dist/css/login.css">
    <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="js/login.js"></script>

</head>

<body >
<div style="width: 100%;height: 90px;background-color: white"></div>
 <div class="back" ><img src="img/bg.jpg" class="imgs" >
     <!--表单区域-->
<div class="div1" >

     <form id="loginForm"  class="form-inline">
         <!--顶部-->
         <div class="div2">
             <div class="div3">
                 <img src="img/密码.png" class="img1" >
              <div class="div4"> 账号密码登录</div>
             </div>
             <div class="div5">
                 <img src="img/二维码.png" class="img2">
                 <div class="div6"> 二维码登录</div>
             </div>
         </div> <br> <br>
         <!--end-->
         <div class="div9">
             <input type="text" class="form-control" name="username" placeholder="用户名" id="box1"/><br><br>

             <input type="password" class="form-control" name="password" placeholder="请输入密码" id="box2"/><br><br>

             <label class="checkbox">
                <div class="mima"> <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">  <p class="p4">记住密码</p></div>
             </label><br>

             <button type="button" class="div7" id="login"><p>登录</p></button>
         </div>

     </form></div>
     <!--end->
     <!--顶部区域-->
     <div style="height: 12%">
         <img src="img/矢量智能对象.png" style="position: absolute;top: 2%;left: 15%;">
        <%-- <img src="img/logo.png" alt="" style="position: absolute;top: 2%;left: 15%;">--%>
     </div>

 </div>

 <%--<div style="height: 10%;width:6%;
     position: absolute;top: 100%;right: 17%;">
     <img src="img/关于我们.png" style="height: 90%;width: 90%;">
     <p style="font-family: '微软雅黑';font-size: 17px;color: #337dae;position: absolute;bottom: 2px;left: 9px">关于我们</p>
 </div>--%>
</body>

</html>
