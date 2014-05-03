package com.sms.dao;

import java.util.List;
import java.util.Map;

import com.sms.vo.Student;

public interface StudentDao
{
	public boolean add(Student stu);
	public boolean update(Student stu);
	public List<Student> list(int startLIMIT,int endLIMIT ,Map<String,String> map);
	public boolean delete(String[] del);
	public Student get(int id);
	public int getId(int id_number);
	
	
}
