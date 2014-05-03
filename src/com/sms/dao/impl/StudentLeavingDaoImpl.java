package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.StudentLeavingDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.StudentLeaving;

public class StudentLeavingDaoImpl implements StudentLeavingDao, SQLConstants
{

	@Override
	public boolean add(StudentLeaving sl)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENTLEAVING_SQL);
			pstmt.setInt(1, sl.getStudent_id());
			pstmt.setDate(2, sl.getLeaving_date());
			pstmt.setString(3, sl.getLeaving_major());
			pstmt.setString(4, sl.getDegree());
			pstmt.setString(5, sl.getCertificate_type());
			pstmt.setInt(6, sl.getCertificate_id());
			pstmt.setString(7, sl.getDegree_certificate());
			pstmt.setInt(8, sl.getDegree_certificate_id());
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

	@Override
	public boolean update(StudentLeaving sl)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENTLEAVING_SQL);
			pstmt.setDate(1, sl.getLeaving_date());
			pstmt.setString(2, sl.getLeaving_major());
			pstmt.setString(3, sl.getDegree());
			pstmt.setString(4, sl.getCertificate_type());
			pstmt.setInt(5, sl.getCertificate_id());
			pstmt.setString(6, sl.getDegree_certificate());
			pstmt.setInt(7, sl.getDegree_certificate_id());
			pstmt.setInt(8, sl.getLeaving_id());
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

	@Override
	public List<StudentLeaving> list(int student_id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_STUDENTLEAVING_SQL);
			pstmt.setInt(1,student_id);
			ResultSet rs = pstmt.executeQuery();
			List<StudentLeaving> list = new ArrayList<StudentLeaving>();
			if(rs.next())
			{
				StudentLeaving sl = new StudentLeaving();
				sl.setLeaving_id(rs.getInt(1));
				sl.setStudent_id(rs.getInt(2));
				sl.setLeaving_date(rs.getDate(3));
				sl.setLeaving_major(rs.getString(4));
				sl.setDegree(rs.getString(5));
				sl.setCertificate_type(rs.getString(6));
				sl.setCertificate_id(rs.getInt(7));
				sl.setDegree_certificate(rs.getString(8));
				sl.setDegree_certificate_id(rs.getInt(9));
				list.add(sl);
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

	@Override
	public boolean delete(String[] del)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENTLEAVING_SQL);
			if(null != del && del.length>0 )
			{
				for(int i=0;i<del.length;i++)
				{
					pstmt.setInt(1, Integer.parseInt(del[i]));
					pstmt.executeUpdate();
				}
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
		return false;
	}

	@Override
	public StudentLeaving get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENTLEAVING_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				StudentLeaving sl = new StudentLeaving();
				sl.setLeaving_id(rs.getInt(1));
				sl.setStudent_id(rs.getInt(2));
				sl.setLeaving_date(rs.getDate(3));
				sl.setLeaving_major(rs.getString(4));
				sl.setDegree(rs.getString(5));
				sl.setCertificate_type(rs.getString(6));
				sl.setCertificate_id(rs.getInt(7));
				sl.setDegree_certificate(rs.getString(8));
				sl.setDegree_certificate_id(rs.getInt(9));
				return sl;
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
