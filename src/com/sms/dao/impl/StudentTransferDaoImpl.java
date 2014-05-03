package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.StudentTransferDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.StudentTransfer;

public class StudentTransferDaoImpl implements StudentTransferDao, SQLConstants
{

	@Override
	public boolean add(StudentTransfer st)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENTTRANSFER_SQL);
			pstmt.setInt(1, st.getStudent_id());
			pstmt.setDate(2, st.getTransfer_date());
			pstmt.setString(3, st.getTransfer_type());
			pstmt.setString(4, st.getTransfer_annual());
			pstmt.setString(5, st.getTransfer_reason());
			pstmt.setString(6, st.getTransfer_material_id());
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
	public boolean update(StudentTransfer st)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENTTRANSFER_SQL);
			pstmt.setDate(1, st.getTransfer_date());
			pstmt.setString(2, st.getTransfer_type());
			pstmt.setString(3, st.getTransfer_annual());
			pstmt.setString(4, st.getTransfer_reason());
			pstmt.setString(5, st.getTransfer_material_id());
			pstmt.setInt(6, st.getTransfer_id());
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
	public List<StudentTransfer> list(int student_id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_STUDENTTRANSFER_SQL);
			pstmt.setInt(1, student_id);
			ResultSet rs = pstmt.executeQuery();
			List<StudentTransfer> list = new ArrayList<StudentTransfer>();
			if(rs.next())
			{
				StudentTransfer st = new StudentTransfer();
				st.setTransfer_id(rs.getInt(1));
				st.setStudent_id(rs.getInt(2));
				st.setTransfer_date(rs.getDate(3));
				st.setTransfer_type(rs.getString(4));
				st.setTransfer_annual(rs.getString(5));
				st.setTransfer_reason(rs.getString(6));
				st.setTransfer_material_id(rs.getString(7));
				list.add(st);
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
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENTTRANSFER_SQL);
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

	@Override
	public StudentTransfer get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENTTRANSFER_SQL);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				StudentTransfer st = new StudentTransfer();
				st.setTransfer_id(rs.getInt(1));
				st.setStudent_id(rs.getInt(2));
				st.setTransfer_date(rs.getDate(3));
				st.setTransfer_type(rs.getString(4));
				st.setTransfer_annual(rs.getString(5));
				st.setTransfer_reason(rs.getString(6));
				st.setTransfer_material_id(rs.getString(7));
				return st;
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
