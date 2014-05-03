package com.sms.dao;

import java.util.List;
 
import com.sms.vo.StudentFamily;

public interface StudentFamilyDao
{
	public boolean add(StudentFamily sf);
	public boolean update(StudentFamily sf);
	public List<StudentFamily> list(int student_id);
	public boolean delete(String[] del);
	public StudentFamily get(int id);
}
