<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>Bootstrap 101 Template</title>
 
    <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/page-min.css" rel="stylesheet" type="text/css" /> 
    <link href="./assets/css/bootstrap2.min.css" rel="stylesheet" media="screen">  
    <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
      .controls
        {
          margin-top: 6px;
        }
    </style>
  </head>
  <body>
  <div class="container">
    <div class="page-header">
      <h1>导出档案<small>Export</small></h1>

    </div>
    <div class="alert">
      <strong>注意：</strong> 下载前请选择好类型.
    </div>
    <form id="J_Form" class="form-horizontal">
      <div class="row">
          <div class="control-group span12">
            <label class="control-label"><s>*</s>时间跨度</label>
            <div class="controls">
              <input type="text" class=" calendar" name="startDate" style="width:90px;"><span> - </span><input name="endDate" type="text" class=" calendar"  style="width:90px;">
            </div>
          </div>
      </div>
      <div class="row">
          <div class="control-group span9">
            <label class="control-label"><s>*</s>导出内容</label>
            <div class="controls">
              <select>
                <option>所有部分</option>
                <option>仅学籍部分</option>
                <option>仅离校情况部分</option>
                <option>仅异动情况部分</option>
                <option>仅奖罚情况部分</option>
              </select>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="control-group span9">
            <label class="control-label"><s>*</s>导出类型</label>
            <div class="controls">
              <select>
                <option>Excel</option>
              </select>
            </div>
          </div>
      </div>
      <p >
        <button class="btn btn-primary" type="button" style="margin-left:50px;">下载</button>
      </p>
    </form>
  </div>
  <script type="text/javascript"  src="./assets/js/jquery-1.8.1.min.js"></script>
     
  <script type="text/javascript" src="./assets/js/bui-min.js"></script>
  <script type="text/javascript" src="./assets/js/config-min.js"></script>
  <script type="text/javascript">
     
    BUI.use('common/page'); //页面链接跳转
 
    BUI.use('bui/form',function (Form) {
      var form = new Form.HForm({
        srcNode : '#J_Form'
      });
 
      form.render();
       });
  </script>
  </body>
</html>
