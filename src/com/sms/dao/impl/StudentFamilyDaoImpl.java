package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.StudentFamilyDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.StudentFamily;

public class StudentFamilyDaoImpl implements StudentFamilyDao, SQLConstants
{

	@Override
	public boolean add(StudentFamily sf)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENTFAMILY_SQL);
			pstmt.setInt(1, sf.getStudent_id());
			pstmt.setString(2, sf.getFamily_name());
			pstmt.setInt(3, sf.getAge());
			pstmt.setString(4, sf.getRelation());
			pstmt.setString(5, sf.getFamily_political());
			pstmt.setString(6, sf.getFamily_work());
			pstmt.setString(7, sf.getFamily_job());
			pstmt.setInt(8, sf.getFamily_office_tel());
			pstmt.setInt(9, sf.getFamily_tel());
			pstmt.executeQuery();
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
	public boolean update(StudentFamily sf)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENTFAMILY_SQL);
			pstmt.setString(1, sf.getFamily_name());
			pstmt.setInt(2, sf.getAge());
			pstmt.setString(3, sf.getRelation());
			pstmt.setString(4, sf.getFamily_political());
			pstmt.setString(5, sf.getFamily_work());
			pstmt.setString(6, sf.getFamily_job());
			pstmt.setInt(7, sf.getFamily_office_tel());
			pstmt.setInt(8, sf.getFamily_tel());
			pstmt.setInt(9, sf.getFamily_id());
			pstmt.executeQuery();
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
	public List<StudentFamily> list(int student_id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_STUDENTFAMILY_SQL);
			pstmt.setInt(1,student_id);
			ResultSet rs = pstmt.executeQuery();
			List<StudentFamily> list = new ArrayList<StudentFamily>();
			if(rs.next())
			{
				StudentFamily sf = new StudentFamily();
				sf.setFamily_id(rs.getInt(1));
				sf.setStudent_id(rs.getInt(2));
				sf.setFamily_name(rs.getString(3));
				sf.setAge(rs.getInt(4));
				sf.setRelation(rs.getString(5));
				sf.setFamily_political(rs.getString(6));
				sf.setFamily_work(rs.getString(7));
				sf.setFamily_job(rs.getString(8));
				sf.setFamily_office_tel(rs.getInt(9));
				sf.setFamily_tel(rs.getInt(10));
				list.add(sf);
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
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENTFAMILY_SQL);
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
	public StudentFamily get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENTFAMILY_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				StudentFamily sf = new StudentFamily();
				sf.setFamily_id(rs.getInt(1));
				sf.setStudent_id(rs.getInt(2));
				sf.setFamily_name(rs.getString(3));
				sf.setAge(rs.getInt(4));
				sf.setRelation(rs.getString(5));
				sf.setFamily_political(rs.getString(6));
				sf.setFamily_work(rs.getString(7));
				sf.setFamily_job(rs.getString(8));
				sf.setFamily_office_tel(rs.getInt(9));
				sf.setFamily_tel(rs.getInt(10));
				return sf;
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
