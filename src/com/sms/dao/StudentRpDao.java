package com.sms.dao;

import java.util.List;

import com.sms.vo.StudentRp;

public interface StudentRpDao
{
	public boolean add(StudentRp sr);//增加
	public boolean update(StudentRp sr); //更新
	public List<StudentRp> list(int student_id);//获取所有
	public boolean delete(String[] del);//删除
	public StudentRp get(int id);//按给定id获取信息
}
