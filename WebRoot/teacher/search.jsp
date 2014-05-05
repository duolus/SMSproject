<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
 <head>
  <title> 搜索表单</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
   <link href="./assets/css/bootstrap-form.min.css" rel="stylesheet" type="text/css" >
    <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/page-min.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
        .controls
        {
          margin-top: 5px;
        }
     </style>
 </head>
 <body>
  
  <div class="container">
 
    <form id="searchForm" class="form-horizontal">
      <div class="row">
        <div class="control-group span8">
          <label class="control-label">学生编号：</label>
          <div class="controls">
            <input type="text" class="control-text" name="Student_id">
          </div>
        </div>
        <div class="control-group span8">
          <label class="control-label">学生姓名：</label>
          <div class="controls">
            <input type="text" class="control-text" name="Student_name">
          </div>
        </div>
        <div class="control-group span8">
          <label class="control-label">性别：</label>
          <div class="controls" >
            <select  id="" name="Sex">
              <option value="">未选择</option>
              <option value="1">男</option>
              <option value="0">女</option>
            </select>
          </div>
        </div>

      </div>
      <div class="row">
      	<div class="control-group span8">
          <label class="control-label">学籍状态：</label>
          <div class="controls" >
            <select  id="" name="Student_status">
              <option value="">未选择</option>
              <option value="zaidu">在读</option>
              <option value="biye">毕业</option>
              <option value="tuixue">退学</option>
            </select>
          </div>
        </div>
      </div>
      <input type="hidden" name="type" value="json" />
      <input type="hidden" name="do" value="search" />
       
      <div class="row">
         
        <div class="span3 offset2">
          <button  type="button" id="btnSearch" class="button button-primary">搜索</button>
        </div>
      </div>
    </form>
 
    <div class="search-grid-container">
      <div id="grid"></div>
    </div>
  </div>
  <script type="text/javascript" src="./assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui-min.js"></script>
  <script type="text/javascript" src="./assets/js/config-min.js"></script>
<script type="text/javascript">
  BUI.use(['common/search','common/page'],function (Search) {
    
    var enumObj = {"1":"男","0":"女"};
    var freshObj = {"1":"是","0":"否"};
    var statusObj = {} ;
      columns = [
          {title:'学生号',dataIndex:'student_id',width:80,renderer:function(v){
            return Search.createLink({
              id : 'id' + v,
              title : '学生信息',
              text : v,
              href : '<%=basePath%>file?to=xuejishow&id='+v,
            });
          }},
          {title:'学生姓名',dataIndex:'student_name',width:70},
          {title:'性别',dataIndex:'sex',width:30,renderer:BUI.Grid.Format.enumRenderer(enumObj)}, 
          {title:'出生日期',dataIndex:'birth',width:80,renderer:BUI.Grid.Format.dateRenderer},
          {title:'年级',dataIndex:'grade',width:50},
          {title:'系别',dataIndex:'info_department',width:100},
          {title:'专业',dataIndex:'student_major',width:100},
          {title:'籍贯',dataIndex:'origo',width:100},
          {title:'民族',dataIndex:'nation',width:50},
          {title:'应届生',dataIndex:'is_fresh',width:50,renderer:BUI.Grid.Format.enumRenderer(freshObj)},
          {title:'学籍状态',dataIndex:'student_status',width:70,renderer:BUI.Grid.Format.enumRenderer(statusObj)},

          {title:'操作',dataIndex:'',width:240,renderer : function(value,obj){
            var editStr =  Search.createLink({ //链接使用 此方式
                id : 'edit' + obj.id,
                title : '编辑学生信息',
                text : '编辑',
                href : 'file/edit_xueji.html?id=' + obj.id
              }),
            rpStr =  Search.createLink({ //链接使用 此方式
                id : 'add' + obj.id,
                title : '查看或编辑奖罚情况',
                text : '奖罚情况',
                href : 'file/rp.html'
              }),
            transactionStr =  Search.createLink({ //链接使用 此方式
                id : 'add' + obj.id,
                title : '查看或编辑异动情况',
                text : '异动情况',
                href : 'file/rp.html'
              }),
            leavingStr =  Search.createLink({ //链接使用 此方式
                id : 'add' + obj.id,
                title : '查看或编辑离校情况',
                text : '离校情况',
                href : 'file/rp.html'
              }) 
               
            return editStr +rpStr+ transactionStr+leavingStr;
          }}
        ],
       
      store = Search.createStore('<%=basePath%>file'),
      gridCfg = Search.createGridCfg(columns,{
        tbar : {
          items : [
             
             
          ]
        },
        plugins : [BUI.Grid.Plugins.CheckSelection] // 插件形式引入多选表格
      });
 
    var  search = new Search({
        store : store,
        gridCfg : gridCfg,
        autoSearch:false
      }),
      grid = search.get('grid');
    //删除操作
    function delFunction(){
      var selections = grid.getSelection();
      delItems(selections);
    }
 
    function delItems(items){
      var ids = [];
      BUI.each(items,function(item){
        ids.push(item.id);
      });
 
      if(ids.length){
        BUI.Message.Confirm('确认要删除选中的记录么？',function(){
          $.ajax({
            url : '<%=basePath%>file?dd=del',
            dataType : 'json',
            data : {ids : ids},
            success : function(data){
              if(data.success){ //删除成功
                search.load();
              }else{ //删除失败
                BUI.Message.Alert('删除失败！');
              }
            }
        });
        },'question');
      }
    }
 
    //监听事件，删除一条记录
    grid.on('cellclick',function(ev){
      var sender = $(ev.domTarget); //点击的Dom
      if(sender.hasClass('btn-del')){
        var record = ev.record;
        delItems([record]);
      }
    });
  });
</script>
 
<body>
</html>  