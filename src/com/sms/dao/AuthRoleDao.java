package com.sms.dao;

import java.util.List;

import com.sms.vo.AuthRole;

public interface AuthRoleDao
{
	public boolean add(AuthRole ar);//增加
	public boolean update(AuthRole ar); //更新
	public List<AuthRole> list();//获取所有
	public boolean delete(String[] del);//删除
	public AuthRole get(int id);//按给定id获取信息
	public int getId(String role);//按给定id获取信息
}
