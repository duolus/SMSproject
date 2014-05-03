package com.sms.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface UserService
{
	//登录验证
	public void dologin(HttpServletRequest request, HttpServletResponse response) throws IOException;
	//通过id获取用户密码
	public String getPWbyid(int id,String role);
	//退出
	public void dologout(HttpServletRequest request, HttpServletResponse response) throws IOException;
	//
	public boolean ischeck(int id ,String pw ,String role);
}
