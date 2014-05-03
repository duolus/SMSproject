package com.sms.vo;

public class AuthRole
{
	int role_id;
	String role_name;
	int role_parent_id;
	String role_status;
	String role_remark;
	public int getRole_id()
	{
		return role_id;
	}
	public void setRole_id(int role_id)
	{
		this.role_id = role_id;
	}
	public String getRole_name()
	{
		return role_name;
	}
	public void setRole_name(String role_name)
	{
		this.role_name = role_name;
	}
	public int getRole_parent_id()
	{
		return role_parent_id;
	}
	public void setRole_parent_id(int role_parent_id)
	{
		this.role_parent_id = role_parent_id;
	}
	public String getRole_status()
	{
		return role_status;
	}
	public void setRole_status(String role_status)
	{
		this.role_status = role_status;
	}
	public String getRole_remark()
	{
		return role_remark;
	}
	public void setRole_remark(String role_remark)
	{
		this.role_remark = role_remark;
	}


}
