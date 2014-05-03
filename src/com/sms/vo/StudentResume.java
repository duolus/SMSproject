package com.sms.vo;

import java.sql.Date;

public class StudentResume
{

	int resume_id;
	int student_id;
	Date resume_sdate;
	Date resume_edate;
	String resume_dept;
	String resume_job;
	
	public int getResume_id()
	{
		return resume_id;
	}
	public void setResume_id(int resume_id)
	{
		this.resume_id = resume_id;
	}
	public int getStudent_id()
	{
		return student_id;
	}
	public void setStudent_id(int student_id)
	{
		this.student_id = student_id;
	}
	public Date getResume_sdate()
	{
		return resume_sdate;
	}
	public void setResume_sdate(Date resume_sdate)
	{
		this.resume_sdate = resume_sdate;
	}
	public Date getResume_edate()
	{
		return resume_edate;
	}
	public void setResume_edate(Date resume_edate)
	{
		this.resume_edate = resume_edate;
	}
	public String getResume_dept()
	{
		return resume_dept;
	}
	public void setResume_dept(String resume_dept)
	{
		this.resume_dept = resume_dept;
	}
	public String getResume_job()
	{
		return resume_job;
	}
	public void setResume_job(String resume_job)
	{
		this.resume_job = resume_job;
	}


}
