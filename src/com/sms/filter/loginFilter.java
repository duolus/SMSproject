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

public class loginFilter implements Filter
{
	private static final String LOGIN_URL = "";
	private static final String HOME_URI = "";
	
	private String login_page;
	private String home_page;

	public void init(FilterConfig filterConfig) throws ServletException
	{
		 
		// TODO Auto-generated method stub
		login_page = filterConfig.getInitParameter(LOGIN_URL);
		 home_page = filterConfig.getInitParameter(HOME_URI) ;
		 
		 if(null == login_page || null == home_page)
		 {
			 throw new ServletException("没有指定登录页面或主页");
		 }
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
	{
		System.out.println("**正在执行登录过滤器**");
		// TODO Auto-generated method stub
		HttpServletResponse httpresponse = (HttpServletResponse)response;
		HttpServletRequest httprequest = (HttpServletRequest)request;
		HttpSession session = httprequest.getSession();
		
	}
	
	public void destroy()
	{
		// TODO Auto-generated method stub
		
	}
}
