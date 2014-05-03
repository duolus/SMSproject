package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.sms.dao.StudentInfoDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.StudentInfo;

public class StudentInfoDaoImpl implements StudentInfoDao, SQLConstants
{

	public StudentInfoDaoImpl()
	{
		// TODO Auto-generated constructor stub
	}

	/*
	 * 
	 * <p>Title: add</p>
	 * <p>Description: </p>
	 * 
	 * @param si
	 * 
	 * @return
	 * 
	 * @see com.sms.dao.StudentInfoDao#add(com.sms.vo.StudentInfo)
	 */
	public boolean add(StudentInfo si)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENTINFO_SQL);
			pstmt.setInt(1, si.getStudent_id());
			pstmt.setString(2, si.getName_old());
			pstmt.setString(3, si.getPic());
			pstmt.setString(4, si.getSex());
			pstmt.setDate(5, si.getBirth());
			pstmt.setString(6, si.getInfo_department());
			pstmt.setString(7, si.getInfo_political());
			pstmt.setLong(8, si.getId_number());
			pstmt.setString(9, si.getNation());
			pstmt.setString(10, si.getOrigo());
			pstmt.setString(11, si.getOrigin());
			pstmt.setInt(12, si.getExam_number());
			pstmt.setString(13, si.getSchool());
			pstmt.setString(14, si.getAddress());
			pstmt.setInt(15, si.getZip());
			pstmt.setLong(16, si.getInfo_tel());
			pstmt.setInt(17, si.getIs_fresh());
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
	public boolean update(StudentInfo si)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENTINFO_SQL);
			pstmt.setInt(1, si.getStudent_id());
			pstmt.setString(2, si.getName_old());
			pstmt.setString(3, si.getPic());
			pstmt.setString(4, si.getSex());
			pstmt.setDate(5, si.getBirth());
			pstmt.setString(6, si.getInfo_department());
			pstmt.setString(7, si.getInfo_political());
			pstmt.setLong(8, si.getId_number());
			pstmt.setString(9, si.getNation());
			pstmt.setString(10, si.getOrigo());
			pstmt.setString(11, si.getOrigin());
			pstmt.setInt(12, si.getExam_number());
			pstmt.setString(13, si.getSchool());
			pstmt.setString(14, si.getAddress());
			pstmt.setInt(15, si.getZip());
			pstmt.setLong(16, si.getInfo_tel());
			pstmt.setInt(17, si.getIs_fresh());
			pstmt.setInt(18, si.getInfo_id());
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
	public List<StudentInfo> list(int startLIMIT, int endLIMIT, Map<String, String> map)
	{
		String sql = QUERY_STUDENTINFO_SQL;
		if(!map.isEmpty())
		{
			String key = "";
			sql = sql+"WHERE  ";
			Iterator<String> it= map.keySet().iterator();
			while(it.hasNext())
			{
				key = it.next();
			    sql = sql +key+"="+map.get(key)+" AND";
			}
		}
		sql = sql+" LIMIT ?, ?";
		System.out.println("studentInfo list sql :"+sql);
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startLIMIT);
			pstmt.setInt(2, endLIMIT);
			ResultSet rs =  pstmt.executeQuery();
			List<StudentInfo> list = new ArrayList<StudentInfo>();
			if(rs.next())
			{
				StudentInfo si = new StudentInfo();
				si.setInfo_id(rs.getInt(1));
				si.setStudent_id(rs.getInt(2));
				si.setName_old(rs.getString(3));
				si.setPic(rs.getString(4));
				si.setSex(rs.getString(5));
				si.setBirth(rs.getDate(6));
				si.setInfo_department(rs.getString(7));
				si.setInfo_political(rs.getString(8));
				si.setId_number(rs.getLong(9));
				si.setNation(rs.getString(10));
				si.setOrigo(rs.getString(11));
				si.setOrigin(rs.getString(12));
				si.setExam_number(rs.getInt(13));
				si.setSchool(rs.getString(14));
				si.setAddress(rs.getString(15));
				si.setZip(rs.getInt(16));
				si.setInfo_tel(rs.getLong(17));
				si.setIs_fresh(rs.getInt(18));
				list.add(si);	
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
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENTINFO_SQL);
			conn.setAutoCommit(false);// 更改JDBC事务的默认提交方式
			if (null != del && del.length > 0)
			{
				for (int i = 0; i < del.length; i++)
				{
					pstmt.setInt(1, Integer.parseInt(del[i]));
					pstmt.executeUpdate();
				}
			}
			conn.commit();// 提交JDBC事务
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
	public StudentInfo get(int id)
	{
		// 从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENTINFO_SQL);
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
			{
				StudentInfo si = new StudentInfo();
				si.setInfo_id(rs.getInt(1));
				si.setStudent_id(rs.getInt(2));
				si.setName_old(rs.getString(3));
				si.setPic(rs.getString(4));
				si.setSex(rs.getString(5));
				si.setBirth(rs.getDate(6));
				si.setInfo_department(rs.getString(7));
				si.setInfo_political(rs.getString(8));
				si.setId_number(rs.getLong(9));
				si.setNation(rs.getString(10));
				si.setOrigo(rs.getString(11));
				si.setOrigin(rs.getString(12));
				si.setExam_number(rs.getInt(13));
				si.setSchool(rs.getString(14));
				si.setAddress(rs.getString(15));
				si.setZip(rs.getInt(16));
				si.setInfo_tel(rs.getLong(17));
				si.setIs_fresh(rs.getInt(18));
				return si;
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
