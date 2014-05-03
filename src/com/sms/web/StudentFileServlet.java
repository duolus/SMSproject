package com.sms.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.service.impl.ArchivesServiceImpl;
import com.sms.util.JsonUtil;

public class StudentFileServlet extends HttpServlet
{

	/**
	 * Constructor of the object.
	 */
	public StudentFileServlet()
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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//获取url中需要跳转的页面
		String to = request.getParameter("to");
		if("" != to && null != to)
		{
			System.out.println("档案管理操作 ："+to);
			RequestDispatcher rd = request.getRequestDispatcher("/teacher/"+to+".jsp");
			request.setAttribute("key", "");
			request.removeAttribute("to");
			rd.forward(request, response);
		}
		String doa = request.getParameter("do");
		if("" != doa && "search".equals(doa))
		{
			ArchivesServiceImpl as = new ArchivesServiceImpl();
			String aa =  as.search(request, response);
		 
			response.getWriter().write(aa);
			
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String or_url = request.getRequestURI();
		//通过ajax形式获取数据
		 
		//获取url中do参数的值
		String rdo = request.getParameter("do");
		if(null != rdo && "" != rdo)//判断是否为空
		{
			//如果
			if(rdo.equals("addxueji"))
			{
				//调用Studentfile中的addxueji()方法
				ArchivesServiceImpl as = new ArchivesServiceImpl();
				if(as.addxueji(request, response))
				{
					System.out.println("保存成功");
					//保存成功跳转到成功页面
					RequestDispatcher rd = request.getRequestDispatcher("/other/success.jsp");
					request.setAttribute("text", "保存成功");
					request.setAttribute("url", or_url+"?to="+rdo);
					rd.forward(request, response);
				}
				else
				{
					System.out.println("保存失败");
				}
				
				
				
				
			}else if(rdo.equals("edittransaction"))
			{
				
			}
		}
		
			
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException
	{
		// Put your code here
	}

}
