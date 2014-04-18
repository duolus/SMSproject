<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println(basePath);
%>

<!DOCTYPE html>
<html>
  <head>
    <title>学生管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">  
	<meta http-equiv="cache-control" content="no-cache">  
	<meta http-equiv="expires" content="0">     	
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  <body>
    <h1>登录</h1>
   	<div class="container">
	    <form class="form-horizontal" action="<%=basePath %>servlet/checklogin" method="POST">
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">学号</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="您的学号">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">密码</label>
		    <div class="controls">
		      <input type="password" id="inputPassword" placeholder="您的密码">
		    </div>
		  </div>
		  <div class="control-group">
		    <div class="controls">
		      <label class="checkbox">
		        <input type="checkbox"> 记住？
		      </label>
		      <button type="submit" class="btn">登录</button>
		    </div>
		  </div>
		</form>
	</div>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>