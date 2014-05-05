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
  <div class="container">
    <div class="detail-page">
      <h2>个人信息</h2>
      <!--个人信息表格-->
    
        <div class="table-responsive">
          <table class="table table-bordered">
            <tr>
              <td>学号：</td>
              <td>1040112267</td>
              <td>姓名：</td>
              <td>邓文灏</td>
              <td>年级：</td>
              <td>2010</td>
              <td>专业：</td>
              <td>软件工程(软件开发)</td>
            </tr>
            <tr>
              <td>身份证 ：</td>
              <td>441422198911030059</td>
              <td>电子邮箱：</td>
              <td colspan="6">dwh1006@scse.com.cn</td>
               
            </tr>
             <tr>
              <td>行政班：</td>
              <td>10级软件开发2班  (SO10402)</td>
              <td>班主任：</td>
              <td>袁丽娜</td>
              <td>辅导员：</td>
              <td colspan="6">陈婷婷</td>
            </tr>
          </table>
        </div>
      </div>
     

  </div>
  <script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="../assets/js/bui-min.js"></script>
 
  <script type="text/javascript" src="../assets/js/config-min.js"></script>
  <script type="text/javascript">
    BUI.use('common/page');
  </script>
  
<script type="text/javascript">
  //此处实现 js 代码
</script>
 
<body>
</html>  