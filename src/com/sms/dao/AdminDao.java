package com.sms.dao;

import java.util.List;

import com.sms.vo.Admin;

public interface AdminDao
{
	public boolean add(Admin ad);//增加
	public boolean update(Admin ad); //更新
	public List<Admin> getAll();//获取所有
	public boolean delete(String[] del);//删除
	public Admin getOne(int id);//按给定id获取信息
	 
}
