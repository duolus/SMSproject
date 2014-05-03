<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
 <head>
  <title> 编辑学生信息</title>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="./assets/css/bootstrap-form.min.css" rel="stylesheet" type="text/css" >
   
    <link href="./assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="./assets/css/page-min.css" rel="stylesheet" type="text/css" /> 
      <!-- 下面的样式，仅是为了显示代码，而不应该在项目中使用-->
   <link href="./assets/css/prettify.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
    code {
      padding: 0px 4px;
      color: #d14;
      background-color: #f7f7f9;
      border: 1px solid #e1e1e8;
    }
    label 
    {
      display: inline;
    } 
    .controls
     {
       margin-top: 6px;
     }
   </style>
 </head>
 <body>
  
  <div class="container">
       
    <form id ="J_Form" class="form-horizontal" action="success.html">
      <h3>基本信息</h3>
      <div class="row">
        <div class="control-group span12">
          <label class="control-label"><s>*</s>系</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>专业</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>层次</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>姓名：</label>
          <div class="controls">
            <input   type="text" class="control-text" placeholder="郑国富"  disabled>
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>身份证号码</label>
          <div class="controls">
            <input   type="text" class="control-text" placeholder="4410112233440059"  disabled>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group span12">
          <label class="control-label"><s>*</s>性别：</label>
          <div class="controls">
            <input   type="text" class="control-text" placeholder="男"  disabled>
          </div>
        </div>
        <div class="control-group12 span12">
          <label class="control-label"><s>*</s>出生日期</label>
          <div class="controls">
            <input   type="text" class="calendar"  disabled>
          </div>
        </div>
      </div>
      <div class="row">
      	<div class="control-group span12">
          <label class="control-label"><s>*</s>民族</label>
          <div class="controls">
            <input   type="text" class="control-text" placeholder="汉族"  disabled>
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>应届生</label>
          <div class="controls">
            <input   type="text" class="control-text" placeholder="是"  disabled>
          </div>
        </div>
      </div>
      <div class="row">
      	<div class="control-group span12">
          <label class="control-label"><s>*</s>籍贯</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>婚否</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
      </div>
      <div class="row">
      	<div class="control-group span12">
          <label class="control-label"><s>*</s>政治面目</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>户口所在地</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
      </div>
      <div class="row">
      	<div class="control-group span12">
          <label class="control-label"><s>*</s>来校前所在学校</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>家庭联系电话</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group span12">
          <label class="control-label"><s>*</s>家庭住址：</label>
          <div class="controls">
            <input name="address" type="text" class="span8 span-width control-text"  data-rules="{required:true}">
          </div>
        </div>
        <div class="control-group span12">
          <label class="control-label"><s>*</s>邮编</label>
          <div class="controls">
            <input name="sname" type="text" class="control-text" data-rules="{required:true}">
          </div>
        </div>
      </div>
      <hr/>

      <h3>学生简历</h3>
      <div class="row">
        <div class="span21 offset3 control-row-auto">
          <div id="resumegrid"></div>
          <input type="hidden" name="eduation2">
        </div>
      </div>

      <hr/>
      
      <h3>学生家庭</h3>
      <div class="row">
        <div class="span21 offset3 control-row-auto">
          <div id="grid"></div>
          <input type="hidden" name="eduation">
        </div>
        <p id="log"></p>
      </div>
      
      <div class="row">
        <div class="form-actions ">
          <button type="submit" id="" class="button button-primary">保存</button>
          <button type="reset" class="button">重置</button>
        </div>
      </div>
    </form>
    <!--隐藏弹出表单 J_Form1-->
      <div id="content" class="hide">
      <form id="J_Form1" class="form-horizontal">
        <div class="row">
          <div class="control-group span8">
            <label class="control-label"><s>*</s>姓名</label>
            <div class="controls">
              <input name="fname" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          <div class="control-group span8">
            <label class="control-label"><s>*</s>年龄</label>
            <div class="controls">
              <input name="fage" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>关系</label>
            <div class="controls">
              <input name="frelation" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          <div class="control-group span8">
            <label class="control-label"><s>*</s>政治面目</label>
            <div class="controls">
              <input name="fpolitical" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>工作单位</label>
            <div class="controls">
              <input name="fwork" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          <div class="control-group span8">
            <label class="control-label"><s>*</s>职务</label>
            <div class="controls">
              <input name="fjob" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
        <div class="row">
         <div class="control-group span8">
            <label class="control-label"><s>*</s>工作单位电话</label>
            <div class="controls">
              <input name="fofficetel" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          <div class="control-group span8">
            <label class="control-label"><s>*</s>联系电话</label>
            <div class="controls">
              <input name="ftel" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
        </div>
      </form>
    </div>
    <!--隐藏表单 end-->
    <!--隐藏弹出表单 J_Form2-->
      <div id="content2" class="hide">
      <form id="J_Form2" class="form-horizontal">
        <div class="row">
          <div class="control-group ">
            <label class="control-label"><s>*</s>起止年月:</label>
            <div id="range" class="controls bui-form-group" data-rules="{dateRange : true}">
              <input name="rsdate" class="calendar" type="text" style="width:90px;"><label>&nbsp;-&nbsp;</label><input name="redate" class="calendar" type="text" style="width:90px;">
            </div>
          </div>
        </div>
        <div class="row">
          <div class="control-group span20">
            <label class="control-label"><s>*</s>所在学校、年级或单位:</label>
            <div class="controls">
              <input name="rwork" type="text" data-rules="{required:true}" class="input-normal control-text">
            </div>
          </div>
          <div class="row">
            <div class="control-group span20">
              <label class="control-label"><s>*</s>任何职务:</label>
              <div class="controls">
                <input name="rjob" type="text" data-rules="{required:true}" class="input-normal control-text">
              </div>
            </div>
          </div>
        </div>
         
      </form>
    </div>
    <!--隐藏表单 end-->
   </div>
  <script type="text/javascript" src="./assets/js/jquery-1.8.1.min.js"></script>
  <script type="text/javascript" src="./assets/js/bui-min.js"></script>
  <script type="text/javascript" src="./assets/js/bootstrap2.min.js"></script>

  <script type="text/javascript" src="./assets/js/config-min.js"></script>
  <script type="text/javascript">
    BUI.use('common/page');
  </script>
  <script type="text/javascript">
    BUI.use('bui/form',function (Form) {
      var form = new Form.HForm({
        srcNode : '#J_Form'
      }).render();
    });
  </script>
<script type="text/javascript">
  BUI.use(['bui/grid','bui/data','bui/form'],function (Grid,Data,Form) {

    var columns = [
            {title : '姓名',dataIndex :'fname'},
            {title : '年龄',dataIndex :'fage' },
            {title : '关系',dataIndex :'frelation'},
            {title : '政治面目',dataIndex :'fpolitical'},
            {title : '工 作 单 位',dataIndex :'fwork'},
            {title : '职 务',dataIndex :'fjob'},
            {title : '工作单位电话',dataIndex :'fofficetel'},
            {title : '电话',dataIndex :'ftel'},
            {title : '操作',renderer : function(){
              return '<span class="grid-command btn-edit">编辑</span>';
            }}
          ],
      //默认的数据
      data = [
        {id:'1',fname:'梁飞',fage:'45',frelation:'父子',fwork:'广州捷胜科技公司',fjob:'总经理',fofficetel:'8762323322',ftel:'13311122334'},
        {id:'2',fname:'陈红',fage:'43',frelation:'母子',fwork:'广州捷胜科技公司',fjob:'副总经理',fofficetel:'8762323323',ftel:'13311344456'},
         
      ],
      store = new Data.Store({
        data:data
      }),
      editing = new Grid.Plugins.DialogEditing({
        contentId : 'content',
        triggerCls : 'btn-edit',
        eidtor : {
          focusable : false
        }
      }),
      grid = new Grid.Grid({
        render : '#grid',
        columns : columns,
        width : 800,
        forceFit : true,
        store : store,
        plugins : [Grid.Plugins.CheckSelection,editing],
        tbar:{
          items : [{
            btnCls : 'button button-small',
            text : '<i class="icon-plus"></i>添加',
            listeners : {
              'click' : addFunction
            }
          },
          {
            btnCls : 'button button-small',
            text : '<i class="icon-remove"></i>删除',
            listeners : {
              'click' : delFunction
            }
          }]
        }

      });
    grid.render();

    function addFunction(){
      var newData = {school :'请输入学校名称'};
      editing.add(newData); //添加记录后，直接编辑
    }

    function delFunction(){
      var selections = grid.getSelection();
      store.remove(selections);
    }
    var form = new Form.HForm({
      srcNode : '#J_Form1'
    });
    form.render();
    var field = form.getField('eduation');
    form.on('beforesubmit',function(){
      var records = store.getResult();
      field.set('value',BUI.JSON.stringify(records));
    });
  });
</script>

<script type="text/javascript">
  BUI.use(['bui/grid','bui/data','bui/form'],function (Grid,Data,Form) {

    var columns2 = [{title : '起始年月',dataIndex :'rsdate' },
            {title : '终止年月',dataIndex :'redate'},
            {title : '所在学校、年级或单位',dataIndex :'rwork' },
            {title : '任何职务',dataIndex :'rjob'},
            
            {title : '操作',renderer : function(){
              return '<span class="grid-command btn-edit2">编辑</span>';
            }}
          ],
      //默认的数据
      data = [
        {id:'1',rsdate:'2006-09-14',redate:'2007-06-14',rwork:'广州市第一中学',rjob:'学习委员'},
        {id:'2',rsdate:'2007-09-14',redate:'2008-06-14',rwork:'广州市第一中学',rjob:'纪律委员'},
         
      ],
      store2 = new Data.Store({
        data:data
      }),
      editing2 = new Grid.Plugins.DialogEditing({
        contentId : 'content2',
        triggerCls : 'btn-edit2',
        eidtor : {
          focusable : false
        }
      }),
      grid2 = new Grid.Grid({
        render : '#resumegrid',
        columns : columns2,
        width : 800,
        forceFit : true,
        store : store2,
        plugins : [Grid.Plugins.CheckSelection,editing2],
        tbar:{
          items : [{
            btnCls : 'button button-small',
            text : '<i class="icon-plus"></i>添加',
            listeners : {
              'click' : addFunction2
            }
          },
          {
            btnCls : 'button button-small',
            text : '<i class="icon-remove"></i>删除',
            listeners : {
              'click' : delFunction2
            }
          }]
        }

      });
    grid2.render();

    function addFunction2(){
      var newData2 = {school :''};
      editing2.add(newData2); //添加记录后，直接编辑
    }

    function delFunction2(){
      var selections2 = grid2.getSelection();
      store2.remove(selections2);
    }
    var form2 = new Form.HForm({
      srcNode : '#J_Form2'
    });
    form2.render();
    var field2 = form2.getField('eduation2');
    form2.on('beforesubmit',function(){
      var records2 = store2.getResult();
      field2.set('value',BUI.JSON.stringify(records2));
    });
  });

           
</script>
<body>
</html>  