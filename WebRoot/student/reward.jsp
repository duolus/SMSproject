<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
 <head>
  <title> 详情页</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
       <link href="../assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="../assets/css/page-min.css" rel="stylesheet" type="text/css" />
 </head>
 <body>     
<div class="container ">
    <!--翻页按钮-->
    <ul class="pager">
      <li class="next"><a href="#">返回</a></li>
    </ul>
     
    
      <div class="panel-heading"><center>奖励信息</center></div>
      <table class="table table-hover table-bordered"  >
        <thead>
          <tr>
            <td>学年</td>
            <td>学期</td>
            <td>奖励级别</td>
            <td>奖励原因</td>
            <td>奖励单位/部门</td>
            <td>奖励日期</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </tbody>
             
      </table>
    </div>
  <body>
</html>  