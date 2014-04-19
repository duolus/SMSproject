SMSproject
==========
项目目录

SMSproject
		|--src
		|	|--com.sms.dao           数据提供接口
		|   |--com.sms.dao.impl  	 数据接口实现类（为业务逻辑提供数据）
		|   |--com.sms.filter        过滤器（负责登录过滤，身份过滤，权限过滤）
		|   |--com.sms.service       业务提供接口
		|   |--com.sms.service.impl  业务接口实现类（处理控制器的业务逻辑）
		|   |--com.sms.servlet       访问控制器类（接受由视图提交的各个请求）
		|   |--com.sms.util          公用类（如数据库连接类、表格导入导出类等）
		|   |--com.sms.vo			 值对象（与数据紧密相连）
		|   | DBConfig.properties    数据库连接配置文件
		|   | DBCPConfig.properties  DBCP连接池配置文件
		|
		|--webRoot
		|   |--db				            置数据库sql文件
		|   |--asset				 存放资源
		|	|    
		|	|--META-INF
		|   |--WEB-INF
		|   |   |--lib        		 放置第三方jar包
		|   |   | c3p0-config.xml    c3p0连接池的配置
		|   |   | web.xml
		|   |--pages 				 存放静态html或jsp文件 
 


  
