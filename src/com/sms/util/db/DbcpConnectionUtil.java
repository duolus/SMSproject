package com.sms.util.db;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSourceFactory;

public class DbcpConnectionUtil
{
	private static DataSource myDataSource = null;
	
	
	
	public DbcpConnectionUtil()
	{
		InputStream in = null;
		Properties properties = new Properties();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			in =  ClassLoader.getSystemResourceAsStream("DBCPConfig.properties");
		    //in = this.getClass().getClassLoader().getResourceAsStream("DBCPConfig.properties");
			properties.load(in);
			myDataSource =  BasicDataSourceFactory.createDataSource(properties);
			 
		} catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(in != null){
				try {
					in.close();
					}
				catch(IOException e) {
					e.printStackTrace();
					}
				}
			}
	}
	public static Connection openConnection()
	{
			if(myDataSource==null){
				new DbcpConnectionUtil();
				System.out.println("创建了一个连接池");
			}
			try
			{
				return myDataSource.getConnection();	
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
				throw new RuntimeException("数据库连接失败！");
			}
			 
	}
		
	
	public static void main(String []args){
		
		Statement stmt;
		try
		{
			List<String>  table = new ArrayList<String>(); 
			table.add("ecs_users");
			table.add("ecs_article_cat");
			table.add("ecs_attribute");
			table.add("ecs_bonus_type");
          
			for(int i=0 ;i<10;i++)
			{
				Connection conn = DbcpConnectionUtil.openConnection();
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM "+table.get(i));
				
				
			while (rs.next())
			    System.out.println( rs.getString(2) );
				stmt =null;
				conn.close();
				 
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
