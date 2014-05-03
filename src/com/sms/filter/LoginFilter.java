package com.sms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter
{
	private static final String LOGIN_URL = "login_page";
	private static final String HOME_URI = "error_page";
	
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
		/*
		http://localhost:8080/SMSproject/file/search?id=5
		
		getContextPath：/SMSproject
		*getServletPath：/file
		getPathInfo：/index/testpage/test
		getRequestURL：http://localhost:8080/ServletTest/main/index/testpage/test
		getRequestURI：/SMSproject/file/index/testpage/test 
		getQueryString: id=5
		*/
		//System.out.println("**login filter working**");
		HttpServletResponse httpresponse = (HttpServletResponse)response;
		HttpServletRequest httprequest = (HttpServletRequest)request;
		HttpSession session = httprequest.getSession();//获取当前session对象
		
		//获取请求url 
		String request_uri = httprequest.getRequestURI();
		String ctxPath = httprequest.getContextPath();
		String uri = request_uri.substring(ctxPath.length());
		String secondPath = httprequest.getServletPath(); //获取servlet地址
		String urlParameter = httprequest.getQueryString(); //获取url中的参数
		 
		
		
		System.out.println("***过滤器***");
		System.out.println("目标访问地址 ："+request_uri+"?"+httprequest.getQueryString());
		String staut = (String) (session.getAttribute("Role")==null?"未登录":session.getAttribute("Role"));
		System.out.println("当前角色 :"+staut);
		System.out.println("************");
		String islogin = (String) session.getAttribute("islogin");
		//判断是否登录页面或者是网页进行资源调用，如果是则不需要进行过滤
		if(uri.equals(login_page)||uri.equals("/tlogin.jsp")||uri.equals("/adlogin.jsp")||0==secondPath.indexOf("/assets")||uri.equals("/login"))
		{
			chain.doFilter(request, response);
			return;
		}
		//判断是否已登录，登录则进入下一步，未登录则跳转到登录页面
		if("true".equals(islogin))
		{
			//判断是否有该操作权限

			System.out.println(ctxPath+" ????"+request_uri);
			if(request_uri.equals(ctxPath+"/"))
			{
				httpresponse.sendRedirect(request_uri +"index/"+session.getAttribute("index")+".jsp");
			}else
			{
				chain.doFilter(request, response);
			}
			
			
			return;
		}
		else
		{
			//获取url中的参数和值
			String strq = httprequest.getQueryString();
			System.out.println("aaa"+strq);
			if(null != strq)
			{
				request_uri = request_uri+"?"+strq;
			} 
			httprequest.setAttribute("origin_uri", request_uri);
			RequestDispatcher rd = httprequest.getRequestDispatcher("/login");
			rd.forward(httprequest, httpresponse);
			return;
		}
		
	}
	
	public void destroy()
	{
		// TODO Auto-generated method stub
		
	}
}
