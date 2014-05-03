package com.sms.dao;

import java.util.List;
import java.util.Map;

import com.sms.vo.StudentInfo;

public interface StudentInfoDao
{
	public boolean add(StudentInfo si);//增加
	public boolean update(StudentInfo si); //更新
	public List<StudentInfo> list(int startLIMIT,int endLIMIT ,Map<String,String> map);//获取所有
	public boolean delete(String[] del);//删除
	public StudentInfo get(int id);//按给定id获取信息
}
