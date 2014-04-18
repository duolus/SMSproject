package com.sms.vo;

public class Teacher
{
	int Teacher_ID;
	String teacher_Password;
	String teacher_Name;
	String teacher_Department;
	String position;
	String status;
	int create_by_id;
	String create_Time;
	String create_IP;
	String login_Time;
	String login_IP;
	String session;
	String mark;
	public int getTeacher_ID()
	{
		return Teacher_ID;
	}
	public void setTeacher_ID(int teacher_ID)
	{
		Teacher_ID = teacher_ID;
	}
	public String getTeacher_Password()
	{
		return teacher_Password;
	}
	public void setTeacher_Password(String teacher_Password)
	{
		this.teacher_Password = teacher_Password;
	}
	public String getTeacher_Name()
	{
		return teacher_Name;
	}
	public void setTeacher_Name(String teacher_Name)
	{
		this.teacher_Name = teacher_Name;
	}
	public String getTeacher_Department()
	{
		return teacher_Department;
	}
	public void setTeacher_Department(String teacher_Department)
	{
		this.teacher_Department = teacher_Department;
	}
	public String getPosition()
	{
		return position;
	}
	public void setPosition(String position)
	{
		this.position = position;
	}
	public String getStatus()
	{
		return status;
	}
	public void setStatus(String status)
	{
		this.status = status;
	}
	public int getCreate_by_id()
	{
		return create_by_id;
	}
	public void setCreate_by_id(int create_by_id)
	{
		this.create_by_id = create_by_id;
	}
	public String getCreate_Time()
	{
		return create_Time;
	}
	public void setCreate_Time(String create_Time)
	{
		this.create_Time = create_Time;
	}
	public String getCreate_IP()
	{
		return create_IP;
	}
	public void setCreate_IP(String create_IP)
	{
		this.create_IP = create_IP;
	}
	public String getLogin_Time()
	{
		return login_Time;
	}
	public void setLogin_Time(String login_Time)
	{
		this.login_Time = login_Time;
	}
	public String getLogin_IP()
	{
		return login_IP;
	}
	public void setLogin_IP(String login_IP)
	{
		this.login_IP = login_IP;
	}
	public String getSession()
	{
		return session;
	}
	public void setSession(String session)
	{
		this.session = session;
	}
	public String getMark()
	{
		return mark;
	}
	public void setMark(String mark)
	{
		this.mark = mark;
	}


}
