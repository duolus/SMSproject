package com.sms.dao;

import java.util.List;

import com.sms.vo.Admin;

public interface AdminDao
{
	public void add(Admin ad);
	public void update(Admin ad);
	public List<?> list();
	public void delete(String[] del);
	public Admin get(int id);
}
