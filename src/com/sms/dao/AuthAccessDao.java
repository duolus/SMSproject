package com.sms.dao;

import java.util.List;

import com.sms.vo.AuthAccess;

public interface AuthAccessDao
{
	public boolean add(AuthAccess aa);//增加
	public boolean update(AuthAccess aa,int roleid ,int nodeid ,int level); //更新
	public List<AuthAccess> list();//获取所有
	public boolean delete(String[] del);//删除
	public AuthAccess get(int id);//按给定id获取信息
}
