package com.sms.dao;

import java.util.List;
 
import com.sms.vo.Teacher;

public interface TeacherDao
{
	public void add(Teacher teacher);
	public void update(Teacher teacher);
	public List<?> list();
	public void delete(String[] del);
	public Teacher get(int id);
	

}
