package com.sms.util.db;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil
{
 
	public Connection openConnection()
	{
		String url = "";
		String dbdriver = "";
		String user = "";
		String password = "";
		//读取数据库配置信息
		  InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("DBConfig.properties");   
		  Properties p = new Properties();   
		  try {   
		   p.load(inputStream);   
		   //System.out.println("ip:"+p.getProperty("ip")+",port:"+p.getProperty("port")); 
		   url = p.getProperty("url");
		   dbdriver = p.getProperty("dbdriver");
		   user = p.getProperty("user");
		   password = p.getProperty("password");
	 
		   try
		{
			Class.forName(dbdriver);
			Connection conn = DriverManager.getConnection(url,user,password);
			System.out.println("已成功连接MySQL数据库");
		} catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		  } catch (IOException e1) {   
		   e1.printStackTrace(); 
		   
		  }   
		return null;
		
	}
	/**
	 * @方法说明: 
	 *
	 * @最近更新时间：
	 *
	 * @param: @param args
	 *
	 * @throws：
	 *
	 * @return: void
	 * 
	 */
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		ConnectionUtil cu = new ConnectionUtil();
		cu.openConnection();
	}

}
