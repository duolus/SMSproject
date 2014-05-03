<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/bootstrap-form.min.css" rel="stylesheet" type="text/css" >
    <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
 	<style type="text/css">
   	body
   	{
   		background-image: url(assets/img/login-bg.png);
   	}
   	input
   	{
   		height: 22px !important;
   	}
	.controls
     {
       margin-top: 6px;
       height: 0px;
     }
     .login_header
     {
     	width: auto;
     	height: 20px;
     	background-color: #FFF;
     	border-bottom:solid #CCC 1px;
     }
     .box_bg
     {
     	width: 453px;
     	height: 277px;
     	margin: 0 auto;
     	margin-top: 50px;
     	padding-top: 1px;
     	background-image: url(assets/img/box_bg.png); 
     }

    .box_bg h1 
     {
       font-size: 43px;
       padding-left: 10px;
       line-height: 76px;
     }
     .login_box
     {
     	width: 200px;
     	height: 150px;
     	margin: 0 auto;
     	margin-top: 20px;
     	 
     }
     .form-horizontal .control-label {
		float: left;
		width: 40px;
		 
		}
	.control-group
	{
		width: 200px;
		margin-bottom: 0px;
	}
   </style>
  </head>
  
  <body>
 	<div class="login_header"><img src="" style="float:right;" /><span style="float:right;"><a href="<%=basePath %>tlogin.jsp">切换至教师登录</a></span></div>
 	<div class="box_bg">
 		<div class=""><h1>管理员后台</h1></div>
	 <div class="login_box">
	    <form id ="J_Form" class="form-horizontal" method="GET" action="<%=basePath %>login">
	    	 
		    	<div class="control-group">
		          <label class="control-label">账号</label>
		          <div class="controls">
		            <input name="id" type="text" class="control-text" data-rules="{required:true,number:true}">
		          </div>
		        </div>
		        <div class="control-group">
		          <label class="control-label">密码</label>
		          <div class="controls">
		            <input name="password" type="password" class="control-text" data-rules="{required:true}">
		          </div>
		        </div>
		         <input name="action" type="hidden" value="logon"/>
		         <input name="role" type="hidden" value="admin"/>
				<button class="button button-large button-block  " type="submit" style="margin-left:50px;">登录</button>

	     		 
	   	</form>
	  </div>
   	</div>
 </body>
  <script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="assets/js/bui.js"></script>
  <script type="text/javascript" src="assets/js/config.js"></script>
  <script type="text/javascript">
    BUI.use('bui/form',function (Form) {
      var form = new Form.HForm({
        srcNode : '#J_Form'
      }).render();
    });
  </script>
</html>
