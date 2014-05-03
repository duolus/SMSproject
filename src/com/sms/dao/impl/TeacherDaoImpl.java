package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.PreparedStatement;


import com.sms.dao.TeacherDao;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.Teacher;

import com.sms.util.SQLConstants;

/**
 * 
* @ClassName: TeacherDaoImpl
* @Description: TODO
* @author Duolus
* @date 2014-4-28 上午1:08:29
*
 */
public class TeacherDaoImpl implements TeacherDao,SQLConstants
{

	/*
	 * 
	* <p>Title: 添加教师用户</p>
	* <p>Description: </p>
	* @param teacher
	* @see com.sms.dao.TeacherDao#add(com.sms.vo.Teacher)
	 */
	public boolean add(Teacher teacher)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_TEACHER_SQL);
			 //pstmt.setInt(1, teacher.getTeacher_id());
			 pstmt.setString(1, teacher.getTeacher_password());
			 pstmt.setString(2, teacher.getTeacher_name());
			 pstmt.setString(3, teacher.getTeacher_dept());
			 pstmt.setString(4, teacher.getTeacher_job());
			 pstmt.setString(5, teacher.getTeacher_status());
			 pstmt.setInt(6, teacher.getTeacher_create_id());
			 pstmt.setTimestamp(7, teacher.getTeacher_create_time());
			 pstmt.setString(8, teacher.getTeacher_create_ip());
			// pstmt.setTime(, teacher.getTeacher_login_time());
			// pstmt.setString(, teacher.getTeacher_login_ip());
			// pstmt.setString(, teacher.getTeacher_session());
			 pstmt.setInt(9, teacher.getRole_id());
			 pstmt.executeUpdate();
			 System.out.println("add teacher user ,name "+teacher.getTeacher_name());
			 return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try
			{
				conn.close();
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("释放连接错误");
			}
		}
		return false;
	}

	/*
	 * 
	* <p>Title: 更新教师信息</p>
	* <p>Description: </p>
	* @param teacher
	* @see com.sms.dao.TeacherDao#update(com.sms.vo.Teacher)
	 */

	public boolean update(Teacher teacher)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_TEACHER_SQL);
			pstmt.setString(1, teacher.getTeacher_password());
			pstmt.setString(2, teacher.getTeacher_name());
			pstmt.setString(3, teacher.getTeacher_dept());
			pstmt.setString(4, teacher.getTeacher_job());
			pstmt.setString(5, teacher.getTeacher_status());
			pstmt.setTimestamp(6, teacher.getTeacher_login_time());
			pstmt.setString(7, teacher.getTeacher_login_ip());
			pstmt.setString(8, teacher.getTeacher_session());
			pstmt.setInt(9, teacher.getRole_id());
			pstmt.setInt(10, teacher.getTeacher_id());
			pstmt.executeUpdate();
			System.out.println("update teacher data");
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try
			{
				conn.close();
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return false;
	}

	/*
	 * 
	* <p>Title: 获取所有教师用户</p>
	* <p>Description: </p>
	* @return
	* @see com.sms.dao.TeacherDao#list()
	 */
	public List<Teacher> list(int startLIMIT ,int endLIMIT)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_TEACHER_SQL);
			pstmt.setInt(1, startLIMIT);
			pstmt.setInt(2, endLIMIT);
			ResultSet rs =  pstmt.executeQuery();
			List<Teacher> list = new ArrayList<Teacher>();
			if(rs.next())
			{
				Teacher t = new Teacher();
				t.setTeacher_id(rs.getInt(1));
				t.setTeacher_password(rs.getString(2));
				t.setTeacher_name(rs.getString(3));
				t.setTeacher_dept(rs.getString(4));
				t.setTeacher_job(rs.getString(5));
				t.setTeacher_status(rs.getString(6));
				t.setTeacher_create_id(rs.getInt(7));
				t.setTeacher_create_time(rs.getTimestamp(8));
				t.setTeacher_create_ip(rs.getString(9));
				t.setTeacher_login_time(rs.getTimestamp(10));
				t.setTeacher_login_ip(rs.getString(11));
				t.setTeacher_session(rs.getString(12));
				t.setRole_id(rs.getInt(13));
				list.add(t);
				
			}
			
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/*
	 * 
	* <p>Title: 批量删除教师用户</p>
	* <p>Description: </p>
	* @param del
	* @see com.sms.dao.TeacherDao#delete(java.lang.String[])
	 */
	public boolean delete(String[] del)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_TEACHER_SQL);
			conn.setAutoCommit(false);// 更改JDBC事务的默认提交方式
			if(null != del && del.length>0 )
			{
				for(int i=0;i<del.length;i++)
				{
					pstmt.setInt(1, Integer.parseInt(del[i]));
					pstmt.executeUpdate();
				}
			}
			conn.commit();//提交JDBC事务
			conn.setAutoCommit(true);// 恢复JDBC事务的默认提交方式
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			try
			{
				conn.rollback();
			} catch (SQLException e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}//回滚JDBC事务
			e.printStackTrace();
		}
		return false;
		
	}

	/*
	 * 
	* <p>Title: 获取单个教师信息</p>
	* <p>Description: </p>
	* @param id
	* @return
	* @see com.sms.dao.TeacherDao#get(int)
	 */
	public Teacher get(int id)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_TEACHER_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				Teacher t = new Teacher();
				t.setTeacher_id(rs.getInt(1));
				t.setTeacher_password(rs.getString(2));
				t.setTeacher_name(rs.getString(3));
				t.setTeacher_dept(rs.getString(4));
				t.setTeacher_job(rs.getString(5));
				t.setTeacher_status(rs.getString(6));
				t.setTeacher_create_id(rs.getInt(7));
				t.setTeacher_create_time(rs.getTimestamp(8));
				t.setTeacher_create_ip(rs.getString(9));
				t.setTeacher_login_time(rs.getTimestamp(10));
				t.setTeacher_login_ip(rs.getString(11));
				t.setTeacher_session(rs.getString(12));
				t.setRole_id(rs.getInt(13));
				return t;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			try
			{
				conn.close();
			} catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
 

}
