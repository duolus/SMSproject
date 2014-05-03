package com.sms.vo;
 
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Date;

/**
 * 
* @ClassName: Teacher
* @Description: 教师用户表对象
* @author Duolus
* @date 2014-4-28 上午1:08:04
*
 */
public class Teacher
{

	int teacher_id;
	String teacher_password;
	String teacher_name;
	String teacher_dept;
	String teacher_job;
	String teacher_status;
	int teacher_create_id;
	Timestamp teacher_create_time;
	String teacher_create_ip;
	Timestamp teacher_login_time;
	String teacher_login_ip;
	String teacher_session;
	int role_id;
	public int getTeacher_id()
	{
		return teacher_id;
	}
	public void setTeacher_id(int teacher_id)
	{
		this.teacher_id = teacher_id;
	}
	public String getTeacher_password()
	{
		return teacher_password;
	}
	public void setTeacher_password(String teacher_password)
	{
		this.teacher_password = teacher_password;
	}
	public String getTeacher_name()
	{
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name)
	{
		this.teacher_name = teacher_name;
	}
	public String getTeacher_dept()
	{
		return teacher_dept;
	}
	public void setTeacher_dept(String teacher_dept)
	{
		this.teacher_dept = teacher_dept;
	}
	public String getTeacher_job()
	{
		return teacher_job;
	}
	public void setTeacher_job(String teacher_job)
	{
		this.teacher_job = teacher_job;
	}
	public String getTeacher_status()
	{
		return teacher_status;
	}
	public void setTeacher_status(String teacher_status)
	{
		this.teacher_status = teacher_status;
	}
	public int getTeacher_create_id()
	{
		return teacher_create_id;
	}
	public void setTeacher_create_id(int teacher_create_id)
	{
		this.teacher_create_id = teacher_create_id;
	}
	public Timestamp getTeacher_create_time()
	{
		return teacher_create_time;
	}
	public void setTeacher_create_time(Timestamp date)
	{
		this.teacher_create_time = date;
	}
	public String getTeacher_create_ip()
	{
		return teacher_create_ip;
	}
	public void setTeacher_create_ip(String teacher_create_ip)
	{
		this.teacher_create_ip = teacher_create_ip;
	}
	public Timestamp getTeacher_login_time()
	{
		return teacher_login_time;
	}
	public void setTeacher_login_time(Timestamp teacher_login_time)
	{
		this.teacher_login_time = teacher_login_time;
	}
	public String getTeacher_login_ip()
	{
		return teacher_login_ip;
	}
	public void setTeacher_login_ip(String teacher_login_ip)
	{
		this.teacher_login_ip = teacher_login_ip;
	}
	public String getTeacher_session()
	{
		return teacher_session;
	}
	public void setTeacher_session(String teacher_session)
	{
		this.teacher_session = teacher_session;
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
