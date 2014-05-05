package com.sms.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sms.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet
{
	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = 584940013519122043L;

	/**
	 * Constructor of the object.
	 */
	public LoginServlet()
	{
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy()
	{
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("***check login***");
		 
		//获取
		String action = request.getParameter("action");//登录
		String role = request.getParameter("role");//用户
		 
		//获取session
		HttpSession mysession = request.getSession();
		
		//登录
		if(null != action && "logon".equals(action))
		{
			new UserServiceImpl().dologin(request, response);	 //执行登录
		}
		//注销
		else if(null != action && "logout".equals(action))
		{
			new UserServiceImpl().dologout(request, response);	//执行注销
		}
		else //未进行任何操作
		{
			response.sendRedirect(request.getContextPath()+"/login.jsp");
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException
	{
		// Put your code here
	}

}
