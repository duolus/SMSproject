package com.sms.vo;

import java.sql.Timestamp;

public class Admin
{
	int admin_id;
	String admin_name;
	String admin_pwd;
	String admin_login_ip;
	Timestamp admin_login_time;
	public int getAdmin_id()
	{
		return admin_id;
	}
	public void setAdmin_id(int admin_id)
	{
		this.admin_id = admin_id;
	}
	public String getAdmin_name()
	{
		return admin_name;
	}
	public void setAdmin_name(String admin_name)
	{
		this.admin_name = admin_name;
	}
	public String getAdmin_pwd()
	{
		return admin_pwd;
	}
	public void setAdmin_pwd(String admin_pwd)
	{
		this.admin_pwd = admin_pwd;
	}
	public String getAdmin_login_ip()
	{
		return admin_login_ip;
	}
	public void setAdmin_login_ip(String admin_login_ip)
	{
		this.admin_login_ip = admin_login_ip;
	}
	public Timestamp getAdmin_login_time()
	{
		return admin_login_time;
	}
	public void setAdmin_login_time(Timestamp admin_login_time)
	{
		this.admin_login_time = admin_login_time;
	}


}
