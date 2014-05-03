package com.sms.vo;

public class AuthAccess
{

	int role_id;
	int teacher_id;
	int node_id;
	int node_level;
	String module;
	public int getRole_id()
	{
		return role_id;
	}
	public void setRole_id(int role_id)
	{
		this.role_id = role_id;
	}
	public int getTeacher_id()
	{
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id)
	{
		this.teacher_id = teacher_id;
	}
	public int getNode_id()
	{
		return node_id;
	}
	public void setNode_id(int node_id)
	{
		this.node_id = node_id;
	}
	public int getNode_level()
	{
		return node_level;
	}
	public void setNode_level(int node_level)
	{
		this.node_level = node_level;
	}
	public String getModule()
	{
		return module;
	}
	public void setModule(String module)
	{
		this.module = module;
	}


}
