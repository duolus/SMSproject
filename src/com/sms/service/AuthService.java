package com.sms.service;

import java.util.Map;

public interface AuthService
{
	//通过id获取权限
	public Map<String,Object>getAuth(int user_id);
	//验证权限
	public boolean isAuth(int user_id ,String url);
	//获取当前角色
	public String getRoleName(int user_id);
	//获取上级角色
	public String getPRoleName(int user_id);
	//添加角色组,（角色名， 父id，状态）
	public boolean addRole(String rolename,String remarkname,int parent_id,int status );
	//修改角色组
	public boolean editRole(String remarkname,int parent_id,int status );
	//删除角色组
	public boolean deleteRole(int role_id);
	//添加权限
	//public boolean add//
}
