package com.sms.util.db;

import java.beans.PropertyVetoException;

import com.mchange.v2.c3p0.*;

public class C3p0PoolUtil
{

	public C3p0PoolUtil()
	{
		ComboPooledDataSource cpds = new ComboPooledDataSource();
		try
		{
			cpds.setDriverClass("com.mysql.jdbc.Driver");// loads the jdbc driver
		} catch (PropertyVetoException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		cpds.setJdbcUrl("jdbc:mysql://localhost:3306/ecshop");
		cpds.setUser("root");
		cpds.setPassword("feiyuntang");
		cpds.setMaxStatements(180);
		//cpds.getMaxStatementsPerConnection();
	}

}
