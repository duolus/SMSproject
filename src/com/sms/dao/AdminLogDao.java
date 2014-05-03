package com.sms.dao;

import java.sql.Timestamp;
import java.util.List;

import com.sms.vo.AdminLog;
 

public interface AdminLogDao
{
	public boolean add(AdminLog adminlog);
	public boolean update(AdminLog adminlog);
	public List<AdminLog> getBytime(int startLIMIT,int endLIMIT,Timestamp startTime,Timestamp endTime);
	public boolean delete(String[] del);
	public AdminLog get(int id);
}
