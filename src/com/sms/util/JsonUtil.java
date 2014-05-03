package com.sms.util;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

 



public class JsonUtil
{
 

	public JSONArray ArrayToJSON(boolean[] boolArray)
	{
		JSONArray jsonArray = JSONArray.fromObject(boolArray);
		return jsonArray ;

	}

	public String  ListToJSON(List<?> list)
	{
		//System.out.println(list.size());
	 	JSONArray jsonArray = JSONArray.fromObject(list);
	 	System.out.println(jsonArray);
		return jsonArray.toString() ;
	}

	public String MapsToJSON(Map<String, Object> map)
	{
		JSONObject jsonObject = JSONObject.fromObject(map);
		return jsonObject.toString();
	}

	public void BeanToJSON(Object obj)
	{
		JSONObject jsonObject = JSONObject.fromObject(obj);
		System.out.println("Bean转JSON操作:" + jsonObject);
	}

	public Object JSONToBean(String json)
	{

		JSONObject jsonObject = JSONObject.fromObject(json);
		Object bean = JSONObject.toBean(jsonObject);
		return  bean; 
	}
	public static void main(String []args)
	{
//		JsonUtil ju = new JsonUtil();
//		Map<String ,Object> map = new HashMap<String, Object>();
//		List<>
//		map.put("id","file");
//		map.put("homePage","search");
//		map.put("menu", list);
//		ju.MapsToJSON(map);
	}
}
