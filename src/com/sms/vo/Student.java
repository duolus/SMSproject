package com.sms.vo;

import java.sql.Timestamp;

/**
 * 
* @ClassName: Student
* @Description: 学生用户表对象
* @author Duolus
* @date 2014-4-28 上午1:06:11
*
 */
public class Student
{
	int student_id;
	String student_password;
	String student_name;
	String student_major;
	int grade;
	String edu_systme;
	String student_status;
	int student_create_id;
	Timestamp student_create_time;
	String student_create_ip;
	Timestamp student_login_time;
	String student_login_ip;
	String student_session;
	int role_id;
	public int getStudent_id()
	{
		return student_id;
	}
	public void setStudent_id(int student_id)
	{
		this.student_id = student_id;
	}
	public String getStudent_password()
	{
		return student_password;
	}
	public void setStudent_password(String student_password)
	{
		this.student_password = student_password;
	}
	public String getStudent_name()
	{
		return student_name;
	}
	public void setStudent_name(String student_name)
	{
		this.student_name = student_name;
	}
	public String getStudent_major()
	{
		return student_major;
	}
	public void setStudent_major(String student_major)
	{
		this.student_major = student_major;
	}
	public int getGrade()
	{
		return grade;
	}
	public void setGrade(int grade)
	{
		this.grade = grade;
	}
	public String getEdu_systme()
	{
		return edu_systme;
	}
	public void setEdu_systme(String edu_systme)
	{
		this.edu_systme = edu_systme;
	}
	public String getStudent_status()
	{
		return student_status;
	}
	public void setStudent_status(String student_status)
	{
		this.student_status = student_status;
	}
	public int getStudent_create_id()
	{
		return student_create_id;
	}
	public void setStudent_create_id(int student_create_id)
	{
		this.student_create_id = student_create_id;
	}
	public Timestamp getStudent_create_time()
	{
		return student_create_time;
	}
	public void setStudent_create_time(Timestamp student_create_time)
	{
		this.student_create_time = student_create_time;
	}
	public String getStudent_create_ip()
	{
		return student_create_ip;
	}
	public void setStudent_create_ip(String student_create_ip)
	{
		this.student_create_ip = student_create_ip;
	}
	public Timestamp getStudent_login_time()
	{
		return student_login_time;
	}
	public void setStudent_login_time(Timestamp student_login_time)
	{
		this.student_login_time = student_login_time;
	}
	public String getStudent_login_ip()
	{
		return student_login_ip;
	}
	public void setStudent_login_ip(String student_login_ip)
	{
		this.student_login_ip = student_login_ip;
	}
	public String getStudent_session()
	{
		return student_session;
	}
	public void setStudent_session(String student_session)
	{
		this.student_session = student_session;
	}
	public int getRole_id()
	{
		return role_id;
	}
	public void setRole_id(int role_id)
	{
		this.role_id = role_id;
	}
	 


}
