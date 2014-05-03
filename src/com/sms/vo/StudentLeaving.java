package com.sms.vo;

import java.sql.Date;

public class StudentLeaving
{
	int leaving_id;
	int student_id;
	Date leaving_date;
	String leaving_major;
	String degree;
	String certificate_type;
	int certificate_id;
	String degree_certificate;
	int degree_certificate_id;
	public int getLeaving_id()
	{
		return leaving_id;
	}
	public void setLeaving_id(int leaving_id)
	{
		this.leaving_id = leaving_id;
	}
	public int getStudent_id()
	{
		return student_id;
	}
	public void setStudent_id(int student_id)
	{
		this.student_id = student_id;
	}
	public Date getLeaving_date()
	{
		return leaving_date;
	}
	public void setLeaving_date(Date leaving_date)
	{
		this.leaving_date = leaving_date;
	}
	public String getLeaving_major()
	{
		return leaving_major;
	}
	public void setLeaving_major(String leaving_major)
	{
		this.leaving_major = leaving_major;
	}
	public String getDegree()
	{
		return degree;
	}
	public void setDegree(String degree)
	{
		this.degree = degree;
	}
	public String getCertificate_type()
	{
		return certificate_type;
	}
	public void setCertificate_type(String certificate_type)
	{
		this.certificate_type = certificate_type;
	}
	public int getCertificate_id()
	{
		return certificate_id;
	}
	public void setCertificate_id(int certificate_id)
	{
		this.certificate_id = certificate_id;
	}
	public String getDegree_certificate()
	{
		return degree_certificate;
	}
	public void setDegree_certificate(String degree_certificate)
	{
		this.degree_certificate = degree_certificate;
	}
	public int getDegree_certificate_id()
	{
		return degree_certificate_id;
	}
	public void setDegree_certificate_id(int degree_certificate_id)
	{
		this.degree_certificate_id = degree_certificate_id;
	}


}
