package com.sms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthFilter implements Filter
{

	public AuthFilter()
	{
		// TODO Auto-generated constructor stub
	}

	@Override
	public void destroy()
	{
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
	{
		HttpServletResponse httpresponse = (HttpServletResponse)response;
		HttpServletRequest httprequest = (HttpServletRequest)request;
		HttpSession session = httprequest.getSession();
		String request_uri = httprequest.getRequestURI();
		String ctxPath = httprequest.getContextPath();
		String uri = request_uri.substring(ctxPath.length());
		
		
		String pathifo = httprequest.getPathInfo();
		String indexPath = (String)session.getAttribute("index");
		
		System.out.println("AUTH 过滤器 .....");
		System.out.println(indexPath+"???"+uri);
		//1.获取当前用户角色
		String role = (String)session.getAttribute("Role");
		 
		String servletPath = httprequest.getServletPath(); //获取servlet地址
		
		//2.判断当前请求与权限是否匹配
		if("teacher".equals(role)&&"/file".equals(servletPath)
				|| "teacher".equals(role) &&  indexPath.equals(uri)//
				||"teacher".equals(role) &&  "/index/index.html".equals(uri))
		{
			System.out.println("允许访问");
			chain.doFilter(httprequest, httpresponse);
		}
		else if("student".equals(role)&&"/student/main".equals(servletPath)
				|| "student".equals(role) &&  indexPath.equals(uri)//
				||"student".equals(role) &&  "/index/index.html".equals(uri))
		{
			System.out.println("允许访问");
			chain.doFilter(httprequest, httpresponse);
		}
		else if("admin".equals(role)&&"/file".equals(servletPath)
				|| "admin".equals(role) &&  indexPath.equals(uri)//
				||"admin".equals(role) &&  "/index/index.html".equals(uri))
		{
			System.out.println("允许访问");
			chain.doFilter(httprequest, httpresponse);
		}
		else//3.如果匹配则继续操作，否则弹出无此操作权限
		{
			System.out.println("没有权限");
			 httpresponse.sendRedirect(ctxPath +indexPath);
		}
		
		
		
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException
	{
		// TODO Auto-generated method stub
		
	}

}
