package com.sms.dao;

import java.util.List;

import com.sms.vo.StudentResume;

public interface StudentResumeDao
{
	public boolean add(StudentResume sr);//增加
	public boolean update(StudentResume sr); //更新
	public List<StudentResume> list(int student_id);//获取所有
	public boolean delete(String[] del);//删除
	public StudentResume get(int id);//按给定id获取信息
}
