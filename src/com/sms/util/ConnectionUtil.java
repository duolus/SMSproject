package com.sms.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Properties;

public class ConnectionUtil
{
	
	public ConnectionUtil(){}
	public Connection openConnection()
	{
		String hostname = "";
		String dbdriver = "";
		String dbname = "";
		String dbport = "";
		String password = "";
		//读取数据库配置信息
		  InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream("DBConfig.properties");   
		  Properties p = new Properties();   
		  try {   
		   p.load(inputStream);   
		   //System.out.println("ip:"+p.getProperty("ip")+",port:"+p.getProperty("port")); 
		  hostname = p.getProperty("ip");
		   
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

	}

}
