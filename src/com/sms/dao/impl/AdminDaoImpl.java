package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.AdminDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.Admin;

public class AdminDaoImpl implements AdminDao,SQLConstants
{

	@Override
	public boolean add(Admin ad)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_ADMIN_SQL);
			pstmt.setString(1, ad.getAdmin_name());
			pstmt.setString(2, ad.getAdmin_pwd());
			pstmt.executeUpdate();
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
	public boolean update(Admin ad)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_ADMIN_SQL);
			pstmt.setString(1, ad.getAdmin_name());
			pstmt.setString(2, ad.getAdmin_pwd());
			pstmt.setString(3, ad.getAdmin_login_ip());
			pstmt.setTimestamp(4, ad.getAdmin_login_time());
			pstmt.setInt(5, ad.getAdmin_id());
			pstmt.executeUpdate();
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
	public List<Admin> getAll()
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_ADMIN_SQL);
			ResultSet rs =  pstmt.executeQuery();
			List<Admin>list  = new ArrayList<Admin>();
			if(rs.next())
			{
				Admin ad = new Admin();
				ad.setAdmin_id(rs.getInt(1));
				ad.setAdmin_name(rs.getString(2));
				ad.setAdmin_pwd(rs.getString(3));
				ad.setAdmin_login_ip(rs.getString(4));
				ad.setAdmin_login_time(rs.getTimestamp(5));
				list.add(ad);
				return list;
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

	@Override
	public boolean delete(String[] del)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_ADMIN_SQL);
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
	public Admin getOne(int id)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_ADMIN_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				Admin ad = new Admin();
				ad.setAdmin_id(rs.getInt(1));
				ad.setAdmin_name(rs.getString(2));
				ad.setAdmin_pwd(rs.getString(3));
				ad.setAdmin_login_ip(rs.getString(4));
				ad.setAdmin_login_time(rs.getTimestamp(5));
				return ad;
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
