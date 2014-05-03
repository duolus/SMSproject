package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.dao.AuthAccessDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.AuthAccess;

public class AuthAccessDaoImpl implements AuthAccessDao, SQLConstants
{

	@Override
	public boolean add(AuthAccess aa)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_AUTHACCESS_SQL);
			pstmt.setInt(1, aa.getTeacher_id());
			pstmt.setInt(2, aa.getNode_id());
			pstmt.setInt(3, aa.getNode_level());
			pstmt.setString(4, aa.getModule());
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
	public boolean update(AuthAccess aa,int roleid ,int nodeid ,int level )
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_AUTHACCESS_SQL);
			pstmt.setInt(1, aa.getRole_id());
			pstmt.setInt(2, aa.getTeacher_id());
			pstmt.setInt(3, aa.getNode_id());
			pstmt.setInt(4, aa.getNode_level());
			pstmt.setString(5, aa.getModule());
			pstmt.setInt(6, roleid);
			pstmt.setInt(7, nodeid);
			pstmt.setInt(8, level);
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
	public List<AuthAccess> list()
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(QUERY_AUTHACCESS_SQL);
			ResultSet rs =  pstmt.executeQuery();
			List<AuthAccess> list = new ArrayList<AuthAccess>();
			if(rs.next())
			{
				AuthAccess aa = new AuthAccess();
				aa.setRole_id(rs.getInt(1));
				aa.setTeacher_id(rs.getInt(2));
				aa.setNode_id(rs.getInt(3));
				aa.setNode_level(rs.getInt(4));
				aa.setModule(rs.getString(5));
				list.add(aa);
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
			PreparedStatement pstmt = conn.prepareStatement(DELETE_AUTHACCESS_SQL);
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
	public AuthAccess get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_AUTHACCESS_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				AuthAccess aa = new AuthAccess();
				aa.setRole_id(rs.getInt(1));
				aa.setTeacher_id(rs.getInt(2));
				aa.setNode_id(rs.getInt(3));
				aa.setNode_level(rs.getInt(4));
				aa.setModule(rs.getString(5));
				return aa;
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
