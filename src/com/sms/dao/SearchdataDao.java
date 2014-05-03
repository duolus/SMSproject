package com.sms.dao;

import java.util.List;
import java.util.Map;

import com.sms.vo.Searchdata;

public interface SearchdataDao
{
	public List<Searchdata> list(int startLIMIT,int endLIMIT ,Map<String,String> map);
}
