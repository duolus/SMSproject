<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首頁</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
   <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
   <link href="./assets/css/main-min.css" rel="stylesheet" type="text/css" />
 

  </head>
  
  <body>
   <div class="header" >
    
      <div class="dl-title" >
          
          <span class="lp-title-port"> </span><span class="dl-title-text">学生管理系统</span>
         
      </div>

    <div class="dl-log">下午好，<span class="dl-log-user">xxx同学</span><a href="<%=basePath%>login?action=logout" title="退出系统" class="dl-log-quit">[退出]</a> 
    </div>
  </div>
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
         
        <li class="nav-item"><div class="nav-item-inner nav-home">学生</div></li>
      </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
   </div>
  <script type="text/javascript" src="./assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui.js"></script>
  <script type="text/javascript" src="./assets/js/config.js"></script>
 
  <script>
    BUI.use('common/main',function(){
      var config = [
          {
            id:'student',
            menu:[{
                text:'首页',
                homePage : 'index',
                items:[
                  {id : 'index',text : '欢迎页',href : 'other/welcome.jsp' ,closeable : false}
                ]
              },{
                text : '个人信息',
                items : [
                  {id : 'info',text : '个人信息查看',href : 'student/main?to=info'}
                ]
              },{
                text : '奖/惩情况',
                items : [
                  {id : 'reward',text : '奖励情况查看',href : 'student/main?to=reward'},
                  {id : 'penalize',text : '惩罚情况查看',href : 'student/main?to=penalize'}
                ]
              },{
                text : '我的成绩',
                items : [
                  
                  {id : 'tab',text : '综合成绩',href : 'student/tab.html'}
                ]
              },{
                text : '个人设置',
                items : [
                  
                  {id : 'changepw',text : '修改密码',href : 'student/main?to=changepw'}
                ]
              }]
          } 
          ];
      new PageUtil.MainPage({
        modulesConfig : config
      });
    });
  </script>
 </body>
</html>
