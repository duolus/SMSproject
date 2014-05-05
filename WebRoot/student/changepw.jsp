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
    
 
    <!-- Bootstrap -->
    <link href="../assets/css/bootstrap2.min.css" rel="stylesheet" type="text/css" > 
    <style type="text/css">
      label 
      {
        display:  initial;
      }
    </style>
 </head>
 <body>
  
  <div class="container">
     <form id="J_Form1" class="form-horizontal" action="" class="row">
         
          <div class="well" style="width:500px; margin-top:30px;">
            <div class="control-group ">
              <label class="control-label" for="inputEmail">原密码：</label>
              <div class="controls">
                <input class="span2" name="a" data-rules="{required:true }" type="text">
                <span class="help-inline"><i id="info" class=" "></i></span>
              </div>
            </div>
            <div class="control-group " >
              <label class="control-label" for="inputEmail">输入新密码：</label>
              <div class="controls ">
                <input class="span2" id="f1" name="f1 a"  type="text">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label" for="inputEmail">再一次输入：</label>
              <div class="controls">
                <input class="span2" name="f2 a" data-rules="{equalTo:'#f1' }" type="text">
              </div>
            </div>
          </div>
           
            <p class="text-center">
              <button class="btn btn-primary" type="submit">保存</button>
               
            </p>
           
        
      </form>
  </div>
  <script type="text/javascript" src="../assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="../assets/js/bui-min.js"></script>
  <!-- 如果不使用页面内部跳转，则下面 script 标签不需要,同时不需要引入 common/page -->
  <script type="text/javascript" src="../assets/js/config-min.js"></script>
  <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>
 
  <script type="text/javascript">
    BUI.use('common/page'); //页面链接跳转
 
    BUI.use('bui/form',function (Form) {
      var form = new Form.HForm({
        srcNode : '#J_Form'
      });
 
      form.render();
      /**
            异步验证所输入的密码是否正确。。
          **/
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
              var jsondata = data;
              console.log('aa' ,jsondata);
              if(jsondata.state  == true){
                $('#info').addClass("icon-ok");
                $('#info').removeClass("icon-remove");
              }else{
                $('#info').addClass("icon-remove");
                $('#info').removeClass("icon-ok");}
            }
          });




    });
    
  </script>
 
<body>
</html> 