package com.sms.service.impl;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.dao.TeacherDao;
import com.sms.dao.impl.AdminDaoImpl;
import com.sms.dao.impl.StudentDaoImpl;
import com.sms.dao.impl.TeacherDaoImpl;

import com.sms.service.UserService;

import com.sms.vo.Admin;
import com.sms.vo.Student;
import com.sms.vo.Teacher;

public class UserServiceImpl implements UserService
{

	@Override
	public void dologin(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		// 获取源地址
		String origin_uri = (String) request.getAttribute("origin_uri");
		// 声明目标地址
		String goal_uri = origin_uri;
		// 获取用户名密码
		int id = Integer.valueOf(request.getParameter("id"));
		String password = request.getParameter("password");
		String role = request.getParameter("role");// 用户

		HttpSession session = request.getSession();

		if ("student".equals(role) && ischeck(id, password, role))
		{
			session.setAttribute("islogin", "true");// 设置session中islogin属性值为true
			session.setAttribute("Role", "student");// 获取当前用户信息
			session.setAttribute("index", "stuindex");
			if (null == goal_uri)
			{
				goal_uri = "/index/stuindex.jsp";
			}
			response.sendRedirect(request.getContextPath() + goal_uri);

		}
		// 教师
		else if ("teacher".equals(role) && ischeck(id, password, role))
		{

			session.setAttribute("islogin", "true");// 设置session中islogin属性值为true
			session.setAttribute("Role", "teacher");// 获取当前用户信息
			session.setAttribute("index", "tchindex");
			// 获取
			if (null == goal_uri)
			{
				goal_uri = "/index/tchindex.jsp";
			}
			response.sendRedirect(request.getContextPath() + goal_uri);

		}
		// 管理员
		else if ("admin".equals(role) && ischeck(id, password, role))
		{

			session.setAttribute("islogin", "true");// 设置session中islogin属性值为true
			session.setAttribute("Role", "admin");// 获取当前用户信息
			session.setAttribute("index", "adindex");
			// 获取
			if (null == goal_uri)
			{
				goal_uri = "/index/adindex.jsp";
			}
			response.sendRedirect(request.getContextPath() + goal_uri);

		} else
		{
			System.out.println("密码错误");
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}

	}

	public String getPWbyid(int id, String role)
	{
		 
		if ("student".equals(role))
		{
			Student stu = new StudentDaoImpl().get(id);
			if (null != stu)
				return stu.getStudent_password();
		} else if ("teacher".equals(role))
		{
			Teacher t = new TeacherDaoImpl().get(id);
			if (null != t)
				return t.getTeacher_password();
		} else if ("admin".equals(role))
		{
			Admin ad = new AdminDaoImpl().getOne(id);
			if (null != ad)
				return ad.getAdmin_pwd();
		}

		return null;

	}

	@Override
	public void dologout(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		HttpSession session = request.getSession();
		// 设置session中islogin属性值为false
		session.setAttribute("islogin", "false");
		// 并转发到登录页面
		response.sendRedirect(request.getContextPath() + "/login.jsp");

	}

	public boolean ischeck(int id, String pw, String role)
	{
		String ipw =  getPWbyid(id, role);
		if (ipw == null)
			return false;
		else
			return pw.equals(ipw);// 返回检查结果
	}

}
