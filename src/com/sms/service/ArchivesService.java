package com.sms.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.vo.Student;

public interface ArchivesService
{
	// 查找档案
	public List<Student> list(HttpServletRequest request, HttpServletResponse response);

	// 通过传入参数，返回json数据
	public String search(HttpServletRequest request, HttpServletResponse response);

	// 获取学籍
	public void getxueji(HttpServletRequest request, HttpServletResponse responsee);

	// 创建学籍
	/**
	 * 
	* @方法说明: 添加学籍表
	*
	* @最近更新时间：2014.5.2
	*
	* @param: @param request
	* @param: @param response
	* @param: @return
	*
	* @throws：
	*
	* @return: boolean
	*
	 */
	public boolean addxueji(HttpServletRequest request, HttpServletResponse response);

	// 修改学籍
	public boolean updatexueji(HttpServletRequest request, HttpServletResponse response);

	// 删除学籍
	public boolean deletexueji(HttpServletRequest request, HttpServletResponse response);

	// 添加离校
	public boolean addleaving(HttpServletRequest request, HttpServletResponse response);

	// 修改离校
	public boolean updateleaving(HttpServletRequest request, HttpServletResponse response);

	// 删除离校
	public boolean deleteleaving(HttpServletRequest request, HttpServletResponse response);

	// 添加奖罚
	public boolean addrp(HttpServletRequest request, HttpServletResponse response);

	// 修改奖罚
	public boolean updaterp(HttpServletRequest request, HttpServletResponse response);

	// 删除奖罚
	public boolean deleterp(HttpServletRequest request, HttpServletResponse responsee);

	// 导出基本情况
	public void doExport(HttpServletRequest request, HttpServletResponse response);

	// 导入数据
	public void doImport(HttpServletRequest request, HttpServletResponse response);

}
