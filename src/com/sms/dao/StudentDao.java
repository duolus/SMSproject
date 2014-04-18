package com.sms.dao;

import java.util.List;

import com.sms.vo.Student;

public interface StudentDao
{
	public void add(Student stu);
	public void update(Student stu);
	public List<?> list();
	public void delete(String[] del);
	public Student get(int id);
	
	
}
