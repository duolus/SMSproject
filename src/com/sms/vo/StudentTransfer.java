package com.sms.vo;

import java.sql.Date;

public class StudentTransfer
{

	int transfer_id;
	int student_id;
	Date transfer_date;
	String transfer_type;
	String transfer_annual;
	String transfer_reason;
	String transfer_material_id;
	public int getTransfer_id()
	{
		return transfer_id;
	}
	public void setTransfer_id(int transfer_id)
	{
		this.transfer_id = transfer_id;
	}
	public int getStudent_id()
	{
		return student_id;
	}
	public void setStudent_id(int student_id)
	{
		this.student_id = student_id;
	}
	public Date getTransfer_date()
	{
		return transfer_date;
	}
	public void setTransfer_date(Date transfer_date)
	{
		this.transfer_date = transfer_date;
	}
	public String getTransfer_type()
	{
		return transfer_type;
	}
	public void setTransfer_type(String transfer_type)
	{
		this.transfer_type = transfer_type;
	}
	public String getTransfer_annual()
	{
		return transfer_annual;
	}
	public void setTransfer_annual(String transfer_annual)
	{
		this.transfer_annual = transfer_annual;
	}
	public String getTransfer_reason()
	{
		return transfer_reason;
	}
	public void setTransfer_reason(String transfer_reason)
	{
		this.transfer_reason = transfer_reason;
	}
	public String getTransfer_material_id()
	{
		return transfer_material_id;
	}
	public void setTransfer_material_id(String transfer_material_id)
	{
		this.transfer_material_id = transfer_material_id;
	}
	
	


}
