package com.sms.service.impl;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;

 

 
import com.sms.dao.impl.SearchdataDaoImpl;
import com.sms.dao.impl.StudentDaoImpl;
import com.sms.dao.impl.StudentInfoDaoImpl;
 
import com.sms.service.ArchivesService;
 
import com.sms.util.JsonUtil;
import com.sms.vo.Searchdata;
import com.sms.vo.Student;
import com.sms.vo.StudentInfo;
 

public class ArchivesServiceImpl implements ArchivesService
{
	public String getValue(HttpServletRequest request, String name)
	{
		String p = request.getParameter(name);
		if (null != p && "" != p)
		{
			return p;
		}
		return null;
	}

	public String MD5(String info) throws NoSuchAlgorithmException
	{
		// 根据MD5算法生成MessageDigest对象
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		byte[] srcBytes = info.getBytes();
		// 使用srcBytes更新摘要
		md5.update(srcBytes);
		// 完成哈希计算，得到result
		return new String(md5.digest());
	}

	public boolean addxueji(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1)
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// 实例化dao对象和值对象
		StudentDaoImpl sdao = new StudentDaoImpl();
		Student stu = new Student();

		StudentInfoDaoImpl sidao = new StudentInfoDaoImpl();
		StudentInfo si = new StudentInfo();
		// 实例化日期
		Date date = new Date();
		Timestamp now = new Timestamp(date.getTime());// 设置时间
		HttpSession session = request.getSession();
		int create_id = Integer.valueOf((String) session.getAttribute("id") == null ? 0 : 1);// 设置创建者id
		String create_ip = request.getRemoteAddr();// 设置创建者ip
		int number = (int) (Math.random() * 99999999);

	
		stu.setStudent_password(request.getParameter("Id_number"));
		
		stu.setStudent_name(getValue(request, "Student_name"));// 姓名
		stu.setStudent_major(getValue(request, "Student_major"));// 专业
		stu.setGrade(date.getYear());// 年级
		stu.setEdu_systme(getValue(request, "Edu_systme"));// 学制
		stu.setStudent_status(getValue(request, "Student_status"));// 学籍状态
		stu.setStudent_create_id(create_id);
		stu.setStudent_create_ip(create_ip);
		stu.setStudent_create_time(now);
		stu.setRole_id(number);
		if (!sdao.add(stu))
		{
			return false;
		}
		System.out.println("性别"+request.getParameter("Sex")); 
		int student_id = sdao.getId(number);
		System.out.println("++++++++++" + Long.valueOf(request.getParameter("Id_number")));
		si.setStudent_id(student_id);
		si.setName_old(null);// 曾用名@
		si.setPic(null);// 头像@
		si.setSex(getValue(request, "Sex"));// 性别
		si.setBirth(java.sql.Date.valueOf(getValue(request, "Birth")));// 出生日期
		si.setInfo_department(getValue(request, "Info_department"));// 院系
		si.setInfo_political(getValue(request, "Info_political"));// 政治面貌
		si.setId_number(Long.valueOf(request.getParameter("Id_number")));// 身份证号
		si.setNation(getValue(request, "Nation"));// 民族
		si.setOrigo(getValue(request, "Origo"));// 籍贯
		si.setOrigin(getValue(request, "Origin"));// 生源地
		si.setExam_number(0);// 准考证号 @
		si.setSchool(getValue(request, "School"));// 来校前所在学校
		si.setAddress(getValue(request, "Address"));// 家庭住址
		si.setZip(Integer.valueOf(getValue(request, "Zip")));// 邮政编码
		si.setInfo_tel(Long.valueOf(request.getParameter("Info_tel")));// 联系电话
		si.setIs_fresh(Integer.valueOf(getValue(request, "Is_fresh")));// 是否应届生
		if (sidao.add(si))
		{
			return true;
		}

		return false;
	}

	@Override
	public List<Student> list(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String search(HttpServletRequest request, HttpServletResponse response)
	{
		// 实例化dao对象和值对象
		SearchdataDaoImpl sddao = new SearchdataDaoImpl();
		List<Searchdata> sdlist = new ArrayList<Searchdata>();
		//获取请求中的值
		/*
		 * start=0&limit=30&pageIndex=0&Student_id=1&Student_name=1&Sex=1&Student_status=zaidu 
		 * */
		int start = Integer.valueOf(request.getParameter("start"));
		int end = Integer.valueOf(request.getParameter("limit"));
		String Stuid = request.getParameter("Student_id");
		String stuname = request.getParameter("Student_name");
		String sex = request.getParameter("Sex");
		String status = request.getParameter("Student_status");
		//实例化searchdata对象
		Map<String,String> map = new HashMap<String,String>();
		map.put("Student_id", Stuid);
		map.put("Student_name", stuname);
		map.put("Sex", sex);
		map.put("Student_status", status);
		//获取searchdata值对象列
		sdlist = sddao.list(start, end, map);
		int results = sddao.getSize();
		if(sdlist.isEmpty())
		{
			return null;
		}
		//调用生成json函数
		JsonUtil ju = new JsonUtil();
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("rows", sdlist);
		map2.put("results", results);
		String returnJson = ju.MapsToJSON(map2);
		return returnJson  ; 
	}

	@Override
	public void getxueji(HttpServletRequest request, HttpServletResponse responsee)
	{
		// TODO Auto-generated method stub

	}

	@Override
	public boolean updatexueji(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deletexueji(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addleaving(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateleaving(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteleaving(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addrp(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updaterp(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleterp(HttpServletRequest request, HttpServletResponse responsee)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void doExport(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub

	}

	@Override
	public void doImport(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub

	}

}
