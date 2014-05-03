package com.sms.vo;

import java.sql.Date;

public class StudentRp
{
	int rp_id;
	int student_id;
	Date rp_date;
	String rp_type;
	String rp_annual;
	String rp_details;
	String rp_material_id;
	public int getRp_id()
	{
		return rp_id;
	}
	public void setRp_id(int rp_id)
	{
		this.rp_id = rp_id;
	}
	public int getStudent_id()
	{
		return student_id;
	}
	public void setStudent_id(int student_id)
	{
		this.student_id = student_id;
	}
	public Date getRp_date()
	{
		return rp_date;
	}
	public void setRp_date(Date rp_date)
	{
		this.rp_date = rp_date;
	}
	public String getRp_type()
	{
		return rp_type;
	}
	public void setRp_type(String rp_type)
	{
		this.rp_type = rp_type;
	}
	public String getRp_annual()
	{
		return rp_annual;
	}
	public void setRp_annual(String rp_annual)
	{
		this.rp_annual = rp_annual;
	}
	public String getRp_details()
	{
		return rp_details;
	}
	public void setRp_details(String rp_details)
	{
		this.rp_details = rp_details;
	}
	public String getRp_material_id()
	{
		return rp_material_id;
	}
	public void setRp_material_id(String rp_material_id)
	{
		this.rp_material_id = rp_material_id;
	}
	
	


}
