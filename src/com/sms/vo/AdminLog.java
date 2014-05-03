package com.sms.vo;

import java.sql.Time;
import java.sql.Timestamp;

public class AdminLog
{
	int log_id;
	int admin_id;
	String filename;
	String method;
	String query;
	Timestamp ltime;
	public int getLog_id()
	{
		return log_id;
	}
	public void setLog_id(int log_id)
	{
		this.log_id = log_id;
	}
	public int getAdmin_id()
	{
		return admin_id;
	}
	public void setAdmin_id(int admin_id)
	{
		this.admin_id = admin_id;
	}
	public String getFilename()
	{
		return filename;
	}
	public void setFilename(String filename)
	{
		this.filename = filename;
	}
	public String getMethod()
	{
		return method;
	}
	public void setMethod(String method)
	{
		this.method = method;
	}
	public String getQuery()
	{
		return query;
	}
	public void setQuery(String query)
	{
		this.query = query;
	}
	public Timestamp getLtime()
	{
		return ltime;
	}
	public void setLtime(Timestamp ltime)
	{
		this.ltime = ltime;
	}

	
}
