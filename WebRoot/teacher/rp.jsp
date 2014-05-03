<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
 <head>
  <title> 资源文件结构</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="./assets/css/bootstrap-btn.min.css" rel="stylesheet" type="text/css" >
    <link href="./assets/css/bootstrap-form.min.css" rel="stylesheet" type="text/css" >
    <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/page-min.css" rel="stylesheet" type="text/css" />  
    <style type="text/css">
      .sm
      {
        width:100px !important;
      }
     .controls
     {
       margin-top: 6px;
     }
    </style>
 </head>
 <body>
  
  <div class="container">
      <form id="J_Form" class="form-horizontal">
          <!--学号异步获取-->
            <div class="span20">
              <div class="well">
                <label>学生编号：</label><input name="a" data-rules="{required:true,length:10}" type="text">
                <span   class="help-inline"> </span>
              </div>
              <div id="info" class="well">
                  <div class="row">
                    <div class="control-group span10">
                      <label class="control-label sm"><s>*</s>学生姓名</label>
                      <div class="controls">
                        <input  data-rules="{date:true}" type="text" disabled>
                      </div>
                    </div>
                   </div>
                   <!--离校时间-->
                    <div class="row">
                      <div class="control-group span10">
                        <label class="control-label sm"><s>*</s>日期</label>
                        <div class="controls">
                          <input class="calendar" name="h" data-rules="{date:true}" type="text">
                        </div>
                      </div>
                    </div>
                    <!--所学专业-->
                    <div class="row">
                      <div class="control-group span10">
                        <label class="control-label sm"><s>*</s>奖/惩</label>
                        <div class="controls">
                          <input name="sname" type="text" class="control-text" data-rules="{required:true}">
                        </div>
                      </div>
                    </div>
                    <!--学位-->
                    <div class="row">
                      <div class="control-group span10">
                        <label class="control-label sm"><s>*</s>学年度</label>
                        <div class="controls">
                          <input name="sname" type="text" class="control-text" data-rules="{required:true}">
                        </div>
                      </div>
                    </div>
                    <!--原因-->
                    <div class="row">
                      <div class="control-group span10">
                        <label class="control-label sm"><s>*</s>详情</label>
                        <div class="controls">
                          <textarea  name="sname" class="control-text" data-rules="{required:true}" rows="5" style="height:50px;"></textarea>
                        </div>
                      </div>
                    </div>
                    <br />
                    <!--有关材料编号-->
                    <div class="row">
                      <div class="control-group span10">
                        <label class="control-label sm"><s>*</s>有关材料编号</label>
                        <div class="controls">
                          <input name="sname" type="text" class="control-text" data-rules="{required:true}">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>   
            <div class="well" style="width:200px; margin-left:30px;">
              <button class="btn btn-primary" type="button">保存</button>
              <button class="btn" type="reset">重置</button>
            </div>
              
             
      </form>
  </div>
  <script type="text/javascript" src="./assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui-min.js"></script>
  <!-- 如果不使用页面内部跳转，则下面 script 标签不需要,同时不需要引入 common/page -->
  <script type="text/javascript" src="./assets/js/config-min.js"></script>
 
  <script type="text/javascript">
    BUI.use('common/page'); //页面链接跳转
 
    BUI.use('bui/form',function (Form) {
      var form = new Form.HForm({
        srcNode : '#J_Form'
      });
 
      form.render();
      var f1 = new Form.Form({
        srcNode : '#J_Form1'
      }).render();
       
      //根据name获取字段
      var field = f1.getField('a');
      //设置异步请求配置项
      field.set('remote',{
        url : '../data/student.php',
        dataType : 'json',
        callback : function (data) {
          //处理数据，此处也可以根据结果显示请求数据的验证结果，
          // return errorMsg; 即可
          $('#info').text(BUI.JSON.stringify(data));
  }
});



    });
  </script>
 
<body>
</html> 