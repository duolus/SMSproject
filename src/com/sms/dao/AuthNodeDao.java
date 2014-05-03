package com.sms.dao;

import java.util.List;

import com.sms.vo.AuthNode;

public interface AuthNodeDao
{
	public boolean add(AuthNode an);//增加
	public boolean update(AuthNode an); //更新
	public List<AuthNode> list();//获取所有
	public boolean delete(String[] del);//删除
	public AuthNode get(int id);//按给定id获取信息
}
