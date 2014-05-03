package com.sms.dao;

import java.util.List;

import com.sms.vo.StudentTransfer;

public interface StudentTransferDao
{
	public boolean add(StudentTransfer st);//增加
	public boolean update(StudentTransfer st); //更新
	public List<StudentTransfer> list(int student_id);//获取所有
	public boolean delete(String[] del);//删除
	public StudentTransfer get(int id);//按给定id获取信息
}
