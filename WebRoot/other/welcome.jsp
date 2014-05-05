<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>欢迎页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../assets/css/bootstrap2.min.css" rel="stylesheet" media="screen">
  </head>
  <body style="background-color:#F2F2F2">
  	<div style=" width:407px; height:221px; margin:0 auto;margin-top:60px; background-image:url(../assets/img/welcome.jpg);">
  	
  	</div>
  	<p class="muted text-center">2014  学生管理系统 V1.0 版权所有</p>
    <script src="../assets/js/jquery-1.8.1.min.js"></script>
    <script src="../assets/js/bootstrap2.min.js"></script>
  </body>
</html>
