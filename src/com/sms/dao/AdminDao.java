package com.sms.dao;

import java.util.List;

import com.sms.vo.Admin;

public interface AdminDao
{
	public void add(Admin ad);//增加
	public void update(Admin ad); //更新
	public List<?> list();//获取所有
	public void delete(String[] del);//删除
	public Admin get(int id);//按给定id获取信息
}
