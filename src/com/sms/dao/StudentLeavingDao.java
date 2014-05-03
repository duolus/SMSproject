package com.sms.dao;

import java.util.List;

import com.sms.vo.StudentLeaving;

public interface StudentLeavingDao
{
	public boolean add(StudentLeaving sl);//增加
	public boolean update(StudentLeaving sl); //更新
	public List<StudentLeaving> list(int student_id);//获取所有
	public boolean delete(String[] del);//删除
	public StudentLeaving get(int id);//按给定id获取信息
}
