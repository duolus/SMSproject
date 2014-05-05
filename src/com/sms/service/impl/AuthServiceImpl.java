package com.sms.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.dao.impl.AuthNodeDaoImpl;
import com.sms.dao.impl.AuthRoleDaoImpl;
import com.sms.service.AuthService;
import com.sms.vo.AuthNode;

public class AuthServiceImpl implements AuthService
{

	@Override
	public List<AuthNode> getAuth(int user_id)
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AuthNode> getAuth(String role)
	{
		AuthNodeDaoImpl ad = new AuthNodeDaoImpl();
		AuthRoleDaoImpl ar = new AuthRoleDaoImpl();
		int id = ar.getId(role);
		if(0 != id)
		{
			return ad.listByid(id);
		}
		return null;
	}

	@Override
	public boolean isAuth(int user_id, String url)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isAuth(String role, String url)
	{
		List<AuthNode> list =getAuth(role);
		if(list.size()>0)
		{
			for(int i=0; i<list.size() ;i++)
			{
				AuthNode an = list.get(i);
				if(an.getNode_name().equals(url))
				{
					return true;
				}
			}
		}
		return false;
	}

	@Override
	public String getRoleName(int user_id)
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addAuth(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateAuth(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delAuth(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addrole(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updaterole(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delrole(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		return false;
	}

 
 
}
