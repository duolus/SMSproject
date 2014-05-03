package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.AdminLogDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.AdminLog;

public class AdminLogDaoImpl implements AdminLogDao,SQLConstants
{

	@Override
	public boolean add(AdminLog adminlog)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_ADMINLOG_SQL);
			pstmt.setInt(1, adminlog.getAdmin_id());
			pstmt.setString(2, adminlog.getFilename());
			pstmt.setString(3, adminlog.getMethod());
			pstmt.setString(4, adminlog.getQuery());
			pstmt.setTimestamp(5, adminlog.getLtime()) ;
			pstmt.executeQuery();
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

	@Override
	public boolean update(AdminLog adminlog)
	{
		return false;
	}

	@Override
	public List<AdminLog> getBytime(int startLIMIT,int endLIMIT,Timestamp startTime,Timestamp endTime)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			String sql = QUERY_ADMINLOG_SQL+"";
			if(null != startTime && null != endTime)
			{
				sql = sql + "ltime >"+startTime+" AND ltime <"+endTime;
			}
			if(-1 != startLIMIT && 0 != endLIMIT)
			{
				sql = sql+"LIMIT "+startLIMIT+" , "+endLIMIT;
			}
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			List<AdminLog> list = new ArrayList<AdminLog>();
			if(rs.next())
			{
				AdminLog al = new AdminLog();
				al.setLog_id(rs.getInt(1));
				al.setAdmin_id(rs.getInt(2));
				al.setFilename(rs.getString(3));
				al.setMethod(rs.getString(4));
				al.setQuery(rs.getString(5));
				al.setLtime(rs.getTimestamp(6));
				list.add(al);	
			}
			return list;
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

	@Override
	public boolean delete(String[] del)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_ADMINLOG_SQL);
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

	@Override
	public AdminLog get(int id)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_ADMINLOG_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				AdminLog al = new AdminLog();
				al.setLog_id(rs.getInt(1));
				al.setAdmin_id(rs.getInt(2));
				al.setFilename(rs.getString(3));
				al.setMethod(rs.getString(4));
				al.setQuery(rs.getString(5));
				al.setLtime(rs.getTimestamp(6));
				return al;
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
