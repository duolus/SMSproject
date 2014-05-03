package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.StudentResumeDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.StudentResume;

public class StudentResumeDaoImpl implements StudentResumeDao, SQLConstants
{

	/*
	 * 
	* <p>Title: add</p>
	* <p>Description: </p>
	* @param sr
	* @return
	* @see com.sms.dao.StudentResumeDao#add(com.sms.vo.StudentResume)
	 */
	public boolean add(StudentResume sr)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENTRESUME_SQL);
			pstmt.setInt(1, sr.getStudent_id());
			pstmt.setDate(2, sr.getResume_sdate());
			pstmt.setDate(3, sr.getResume_edate());
			pstmt.setString(4, sr.getResume_dept());
			pstmt.setString(5, sr.getResume_job());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

	/*
	 * 
	* <p>Title: update</p>
	* <p>Description: </p>
	* @param sr
	* @return
	* @see com.sms.dao.StudentResumeDao#update(com.sms.vo.StudentResume)
	 */
	public boolean update(StudentResume sr)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENTRESUME_SQL);
			pstmt.setInt(1, sr.getStudent_id());
			pstmt.setDate(2, sr.getResume_sdate());
			pstmt.setDate(3, sr.getResume_edate());
			pstmt.setString(4, sr.getResume_dept());
			pstmt.setString(5, sr.getResume_job());
			pstmt.setInt(6,sr.getResume_id());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	/*
	 * 
	* <p>Title: list</p>
	* <p>Description: </p>
	* @return
	* @see com.sms.dao.StudentResumeDao#list()
	 */
	public List<StudentResume> list(int student_id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_STUDENTRESUME_SQL);
			pstmt.setInt(1,student_id);
			ResultSet rs = pstmt.executeQuery();
			List<StudentResume> list = new ArrayList<StudentResume>();
			if(rs.next())
			{
				StudentResume sr = new StudentResume();
				sr.setResume_id(rs.getInt(1));
				sr.setStudent_id(rs.getInt(2));
				sr.setResume_sdate(rs.getDate(3));
				sr.setResume_edate(rs.getDate(4));
				sr.setResume_dept(rs.getString(5));
				sr.setResume_job(rs.getString(6));
				list.add(sr);
			}
			return list;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/*
	 * 
	* <p>Title: delete</p>
	* <p>Description: </p>
	* @param del
	* @return
	* @see com.sms.dao.StudentResumeDao#delete(java.lang.String[])
	 */
	public boolean delete(String[] del)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENTRESUME_SQL);
			if(null != del && del.length>0 )
			{
				for(int i=0;i<del.length;i++)
				{
					pstmt.setInt(1, Integer.parseInt(del[i]));
					pstmt.executeUpdate();
				}
			}
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	/*
	 * 
	* <p>Title: get</p>
	* <p>Description: </p>
	* @param id
	* @return
	* @see com.sms.dao.StudentResumeDao#get(int)
	 */
	public StudentResume get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENTRESUME_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				StudentResume sr = new StudentResume();
				sr.setResume_id(rs.getInt(1));
				sr.setStudent_id(rs.getInt(2));
				sr.setResume_sdate(rs.getDate(3));
				sr.setResume_edate(rs.getDate(4));
				sr.setResume_dept(rs.getString(5));
				sr.setResume_job(rs.getString(6));
				return sr;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
