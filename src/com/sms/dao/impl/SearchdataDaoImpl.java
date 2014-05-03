package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.sms.dao.SearchdataDao;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.Searchdata;

public class SearchdataDaoImpl implements SearchdataDao
{
 
	public int getSize()
	{
		Connection conn = DbcpConnectionUtil.openConnection();
		PreparedStatement pstmt;
		try
		{
			pstmt = conn.prepareStatement("SELECT count(*) FROM `search`");
			ResultSet rs =  pstmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
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
		return 0;
	}
	@Override
	public List<Searchdata> list(int startLIMIT, int endLIMIT, Map<String, String> map)
	{
		String sql = "SELECT * FROM `search`";
		if(!map.isEmpty())
		{
			String key = "";
			String value = "";
			Iterator<String> it= map.keySet().iterator();
			sql = sql+" WHERE  ";
			while(it.hasNext())
			{
				key = it.next();
				value = map.get(key);
				if("" != value)
				{
					sql = sql +key+" = '"+map.get(key)+"' AND ";
				}
			}
		} 
		sql = sql.substring(0,sql.length()-5)+" LIMIT ?, ?";
		System.out.println("Search list sql :"+sql);
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		PreparedStatement pstmt;
		try
		{
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startLIMIT);
			pstmt.setInt(2, endLIMIT);
			
			ResultSet rs =  pstmt.executeQuery();
			List<Searchdata> list =new ArrayList<Searchdata>();
			int n=0;
			while(rs.next())
			{
				Searchdata sd = new Searchdata();
				sd.setStudent_id(String.valueOf(rs.getInt(1)));
				sd.setStudent_name(rs.getString(2));
				sd.setSex(String.valueOf(rs.getInt(3)));
				sd.setBirth(String.valueOf(rs.getDate(4)));
				sd.setGrade(String.valueOf(rs.getInt(5)));
				sd.setInfo_department(rs.getString(6));
				sd.setStudent_major(rs.getString(7));
				sd.setOrigo(rs.getString(8));
				sd.setNation(rs.getString(9));
				sd.setIs_fresh(String.valueOf(rs.getInt(10)));
				sd.setStudent_status(String.valueOf(rs.getInt(11)));
				list.add(sd);
				n++;
			}
			//System.out.println("gong :"+n);
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

}
