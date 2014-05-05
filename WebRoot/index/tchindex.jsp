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

    <div class="dl-log">下午好，<span class="dl-log-user"> 老师</span><a href="<%=basePath%>login?action=logout" title="退出系统" class="dl-log-quit">[退出]</a> 
    </div>
  </div>
   <div class="content">
    <div class="dl-main-nav">
      <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
      <ul id="J_Nav"  class="nav-list ks-clear">
        <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">首页</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-order">档案管理</div></li>
        <li class="nav-item"><div class="nav-item-inner nav-inventory">成绩管理</div></li>
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
            id:'index',
            homePage : 'index',
            menu:[{
                text:'首页',
                items:[
                  {id:'index',text:'欢迎页',href:'other/welcome.jsp' ,closeable : false}, 
                ]
              } ]
          },{
          id:'file', 
          homePage : 'search',
          menu:[{
              text:'查看档案',
              items:[

                {id:'search',text:'简单查找',href:'file?to=search'  },
                
                
              ]
            },{
              text:'创建档案',
              items:[
                {id:'addxueji',text:'创建学籍',href:'file?to=addxueji'},
              ]
            },{
              text:'编辑档案',
              items:[
                {id:'editxueji',text:'学籍',href:'file?to=editxueji'},
                {id:'editleaving',text:'离校情况',href:'file?to=leaving'} ,
                {id:'edittransaction',text:'异动情况',href:'file?to=transaction'},
                {id:'editrp',text:'奖罚情况',href:'file?to=rp'}
              ]
            },{
              text:'档案归档',
              items:[
                {id:'export',text:'导出档案',href:'file?to=export'}
               
              ]
            }
            ]
          },{
            id:'form',
            menu:[{
                text:'成绩查询',
                items:[
                  {id:'code',text:'简单查询',href:'form/code.html'},
                ]
              },{
                text:'成绩录入',
                items:[
                  {id:'code',text:'成绩录入',href:'form/code.html'},
                
                ]
              },{
                text:'成绩编辑',
                items:[
                  {id:'code',text:'成绩编辑',href:'form/code.html'},
                ]
              },{
                text:'设置成绩来源',
                items:[
                  {id:'code',text:'设置成绩来源',href:'form/code.html'},
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
