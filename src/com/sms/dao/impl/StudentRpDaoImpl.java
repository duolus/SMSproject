package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.StudentRpDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.StudentRp;

public class StudentRpDaoImpl implements StudentRpDao, SQLConstants
{

	/*
	 * 
	* <p>Title: add</p>
	* <p>Description: </p>
	* @param sr
	* @return
	* @see com.sms.dao.StudentRpDao#add(com.sms.vo.StudentRp)
	 */
	public boolean add(StudentRp sr)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENTRP_SQL);
			pstmt.setInt(1, sr.getStudent_id());
			pstmt.setDate(2, sr.getRp_date());
			pstmt.setString(3, sr.getRp_type());
			pstmt.setString(4, sr.getRp_annual());
			pstmt.setString(5, sr.getRp_details());
			pstmt.setString(6, sr.getRp_material_id());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally
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
	* <p>Title: update</p>
	* <p>Description: </p>
	* @param sr
	* @return
	* @see com.sms.dao.StudentRpDao#update(com.sms.vo.StudentRp)
	 */
	public boolean update(StudentRp sr)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENTRP_SQL);
			pstmt.setInt(1, sr.getStudent_id());
			pstmt.setDate(2, sr.getRp_date());
			pstmt.setString(3, sr.getRp_type());
			pstmt.setString(4, sr.getRp_annual());
			pstmt.setString(5, sr.getRp_details());
			pstmt.setString(6, sr.getRp_material_id());
			pstmt.setInt(7, sr.getRp_id());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally
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
	* <p>Title: list</p>
	* <p>Description: </p>
	* @param student_id
	* @return
	* @see com.sms.dao.StudentRpDao#list(int)
	 */
	public List<StudentRp> list(int student_id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_STUDENTRP_SQL);
			pstmt.setInt(1,student_id);
			ResultSet rs = pstmt.executeQuery();
			List<StudentRp> list = new ArrayList<StudentRp>();
			if(rs.next())
			{
				StudentRp sr = new StudentRp();
				sr.setRp_id(rs.getInt(1));
				sr.setStudent_id(rs.getInt(2));
				sr.setRp_date(rs.getDate(3));
				sr.setRp_type(rs.getString(4));
				sr.setRp_annual(rs.getString(5));
				sr.setRp_details(rs.getString(6));
				sr.setRp_material_id(rs.getString(7));
				list.add(sr);
			} 
			return list;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally
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

	/*
	 * 
	* <p>Title: delete</p>
	* <p>Description: </p>
	* @param del
	* @return
	* @see com.sms.dao.StudentRpDao#delete(java.lang.String[])
	 */
	public boolean delete(String[] del)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENTRP_SQL);
			if(null != del && del.length>0 )
			{
				for(int i=0;i<del.length;i++)
				{
					pstmt.setInt(1, Integer.parseInt(del[i]));
					pstmt.executeUpdate();
				}
			}
			return true;
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally
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
	* <p>Title: get</p>
	* <p>Description: </p>
	* @param id
	* @return
	* @see com.sms.dao.StudentRpDao#get(int)
	 */
	public StudentRp get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENTRP_SQL);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				StudentRp sr = new StudentRp();
				sr.setRp_id(rs.getInt(1));
				sr.setStudent_id(rs.getInt(2));
				sr.setRp_date(rs.getDate(3));
				sr.setRp_type(rs.getString(4));
				sr.setRp_annual(rs.getString(5));
				sr.setRp_details(rs.getString(6));
				sr.setRp_material_id(rs.getString(7));
				return sr;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally
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
