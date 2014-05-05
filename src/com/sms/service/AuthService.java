package com.sms.service;

import java.util.List;
import java.util.Map;
import com.sms.vo.AuthNode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AuthService
{
	//通过id获取权限
	public List<AuthNode> getAuth(int user_id);
	//通过角色获取权限
	public List<AuthNode> getAuth(String role ); 
	//通过id验证权限
	public boolean isAuth(int user_id ,String url);
	//通过角色验证权限
	public boolean isAuth(String role ,String url);
	//获取当前角色名
	public String getRoleName(int user_id);
	//新增权限
	public boolean addAuth(HttpServletRequest request,HttpServletResponse response);
	//修改权限
	public boolean updateAuth(HttpServletRequest request,HttpServletResponse response);
	//删除权限
	public boolean delAuth(HttpServletRequest request,HttpServletResponse response);
	//新增角色
	public boolean addrole(HttpServletRequest request,HttpServletResponse response);
	//修改角色
	public boolean updaterole(HttpServletRequest request,HttpServletResponse response);
	//删除角色
	public boolean delrole(HttpServletRequest request,HttpServletResponse response);
}
