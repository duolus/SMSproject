package com.sms.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

 
import com.sms.dao.StudentDao;
import com.sms.util.SQLConstants;
import com.sms.util.db.DbcpConnectionUtil;
import com.sms.vo.Student;

/**
 * 
* @ClassName: StudentDaoImpl
* @Description: TODO
* @author Duolus
* @date 2014-4-28 下午9:12:17
*
 */
public class StudentDaoImpl implements StudentDao,SQLConstants
{

	/*
	 * 
	* <p>Title: add</p>
	* <p>Description: </p>
	* @param stu
	* @return
	* @see com.sms.dao.StudentDao#add(com.sms.vo.Student)
	 */
	public boolean add(Student stu)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(ADD_STUDENT_SQL);
			pstmt.setString(1, stu.getStudent_password());
			pstmt.setString(2, stu.getStudent_name());
			pstmt.setString(3, stu.getStudent_major());
			pstmt.setInt(4, stu.getGrade());
			pstmt.setString(5, stu.getEdu_systme());
			pstmt.setString(6, stu.getStudent_status());
			pstmt.setInt(7, stu.getStudent_create_id());
			pstmt.setTimestamp(8, stu.getStudent_create_time());
			pstmt.setString(9, stu.getStudent_create_ip());
			pstmt.setInt(10, stu.getRole_id());
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

	/*
	 * 
	* <p>Title: update</p>
	* <p>Description: </p>
	* @param stu
	* @return
	* @see com.sms.dao.StudentDao#update(com.sms.vo.Student)
	 */
	public boolean update(Student stu)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(UPDATE_STUDENT_SQL);
			pstmt.setString(1, stu.getStudent_password());
			pstmt.setString(2, stu.getStudent_name());
			pstmt.setString(3, stu.getStudent_major());
			pstmt.setInt(4, stu.getGrade());
			pstmt.setString(5, stu.getEdu_systme());
			pstmt.setString(6, stu.getStudent_status());
			pstmt.setTimestamp(7, stu.getStudent_login_time());
			pstmt.setString(8, stu.getStudent_login_ip());
			pstmt.setString(9, stu.getStudent_session());
			pstmt.setInt(10, stu.getRole_id());
			pstmt.setInt(11, stu.getStudent_id());
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

	/*
	 * 
	* <p>Title: list</p>
	* <p>Description: </p>
	* @param startLIMIT
	* @param endLIMIT
	* @return
	* @see com.sms.dao.StudentDao#list(int, int)
	 */
	public List<Student> list(int startLIMIT,int endLIMIT ,Map<String ,String> map)
	{
		String sql = QUERY_STUDENT_SQL;
		if(!map.isEmpty())
		{
			String key = "";
			Iterator<String> it= map.keySet().iterator();
			sql = sql+"WHERE  ";
			while(it.hasNext())
			{
				key = it.next();
			    sql = sql +key+"="+map.get(key)+" AND";
			   
			}
		}
		sql = sql+" LIMIT ?, ?";
		System.out.println("student list sql :"+sql);
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startLIMIT);
			pstmt.setInt(2, endLIMIT);
			ResultSet rs =  pstmt.executeQuery();
			List<Student> list = new ArrayList<Student>();
			if(rs.next())
			{
				Student stu = new Student();
				stu.setStudent_id(rs.getInt(1));
				stu.setStudent_password(rs.getString(2));
				stu.setStudent_name(rs.getString(3));
				stu.setStudent_major(rs.getString(4));
				stu.setGrade(rs.getInt(5));
				stu.setEdu_systme(rs.getString(6));
				stu.setStudent_status(rs.getString(7));
				stu.setStudent_create_id(rs.getInt(8));
				stu.setStudent_create_ip(rs.getString(9));
				stu.setStudent_create_time(rs.getTimestamp(10));
				stu.setStudent_login_time(rs.getTimestamp(11));
				stu.setStudent_login_ip(rs.getString(12));
				stu.setStudent_session(rs.getString(13));
				stu.setRole_id(rs.getInt(14));
				list.add(stu);
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

	/*
	 * 
	* <p>Title: delete</p>
	* <p>Description: </p>
	* @param del
	* @return
	* @see com.sms.dao.StudentDao#delete(java.lang.String[])
	 */
	public boolean delete(String[] del)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(DELETE_STUDENT_SQL);
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
			
			try
			{
				conn.rollback();
			} catch (SQLException e1)
			{
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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

	/*
	 * 
	* <p>Title: get</p>
	* <p>Description: </p>
	* @param id
	* @return
	* @see com.sms.dao.StudentDao#get(int)
	 */
	public Student get(int id)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_STUDENT_SQL);
			pstmt.setInt(1,id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				Student stu = new Student();
				stu.setStudent_id(rs.getInt(1));
				stu.setStudent_password(rs.getString(2));
				stu.setStudent_name(rs.getString(3));
				stu.setStudent_major(rs.getString(4));
				stu.setGrade(rs.getInt(5));
				stu.setEdu_systme(rs.getString(6));
				stu.setStudent_status(rs.getString(7));
				stu.setStudent_create_id(rs.getInt(8));
				stu.setStudent_create_ip(rs.getString(9));
				stu.setStudent_create_time(rs.getTimestamp(10));
				stu.setStudent_login_time(rs.getTimestamp(11));
				stu.setStudent_login_ip(rs.getString(12));
				stu.setStudent_session(rs.getString(13));
				stu.setRole_id(rs.getInt(14));
				return stu;
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int getId(int id_number)
	{
		//从连接池中获得一个连接
		Connection conn = DbcpConnectionUtil.openConnection();
		try
		{
			PreparedStatement pstmt = conn.prepareStatement(GET_BYIDNUM_STUDENT_SQL);
			pstmt.setInt(1,id_number);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				return rs.getInt(1);
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
