package com.sms.vo;

public class Admin
{
	int admin_id;
	String admin_name;
	String admin_pwd;
	String login_ip;
	String login_time;
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
	public String getLogin_ip()
	{
		return login_ip;
	}
	public void setLogin_ip(String login_ip)
	{
		this.login_ip = login_ip;
	}
	public String getLogin_time()
	{
		return login_time;
	}
	public void setLogin_time(String login_time)
	{
		this.login_time = login_time;
	}


}
