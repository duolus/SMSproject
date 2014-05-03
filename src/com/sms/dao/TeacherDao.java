package com.sms.dao;

import java.util.List;
 
import com.sms.vo.Teacher;

public interface TeacherDao
{
	public boolean add(Teacher teacher);
	public boolean update(Teacher teacher);
	public List<Teacher> list(int startLIMIT,int endLIMIT);
	public boolean delete(String[] del);
	public Teacher get(int id);
	

}
