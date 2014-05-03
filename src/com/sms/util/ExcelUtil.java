package com.sms.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;

import com.sms.vo.Exportdata;
import com.sms.vo.Importdata;

public class ExcelUtil
{
	/**
	 * 
	* @方法说明: 获取单元格样式
	*
	* @最近更新时间：
	*
	* @param: @param hwb
	* @param: @return
	*
	* @throws：
	*
	* @return: HSSFCellStyle
	*
	 */
	public HSSFCellStyle getCellStyle(HSSFWorkbook hwb){
		//设置字体
        HSSFFont font = hwb.createFont();
        font.setFontHeightInPoints((short) 10); //字体高度
        font.setColor(HSSFFont.COLOR_NORMAL); //字体颜色
        font.setFontName("黑体"); //字体
        font.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL); //宽度
        //font.setItalic(true); //是否使用斜体
        //font.setStrikeout(true); //是否使用划线
        //设置单元格类型
        HSSFCellStyle cellStyle = hwb.createCellStyle();
        cellStyle.setFont(font);
        cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER); //水平布局：居中
        cellStyle.setWrapText(true);
        cellStyle.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);//前景颜色
        //cellStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);//填充方式，前色填充
		return cellStyle;
	}
 
	/**
	 * 
	* @方法说明: 从Excel表格中导入数据
	*
	* @最近更新时间：
	*
	* @param: @return
	*
	* @throws：
	*
	* @return: List<Exportdata>
	 * @throws ParseException 
	*
	 */
 
	public List<Importdata> getExceltoData(FileInputStream fis) throws ParseException
	{
		try
		{
			HSSFWorkbook hwb = new HSSFWorkbook(fis);
			Importdata idata = null;
			List<Importdata> list = new ArrayList<Importdata>();
			//获取学籍表的sheet
			HSSFSheet sheet = hwb.getSheetAt(0);

			 for (int rowNum = 1; rowNum <= sheet.getLastRowNum(); rowNum++) {
	                HSSFRow hssfRow = sheet.getRow(rowNum);
	                idata = new Importdata();
	                idata.setExam_number((int)hssfRow.getCell(0).getNumericCellValue());  
	                idata.setStudent_name(hssfRow.getCell(1).getStringCellValue());
	                idata.setName_old(hssfRow.getCell(2).getStringCellValue());
	                idata.setSex(hssfRow.getCell(3).getStringCellValue());
	                idata.setInfo_department(hssfRow.getCell(4).getStringCellValue());
	                idata.setStudent_major(hssfRow.getCell(5).getStringCellValue());
	                idata.setGrade((int)hssfRow.getCell(6).getNumericCellValue());
	                idata.setEdu_systme(hssfRow.getCell(7).getStringCellValue());
	                idata.setBirth(new java.sql.Date(hssfRow.getCell(8).getDateCellValue().getTime()));
	                idata.setInfo_political(hssfRow.getCell(9).getStringCellValue());
	                idata.setId_number((int)hssfRow.getCell(10).getNumericCellValue());
	                idata.setNation(hssfRow.getCell(11).getStringCellValue());
	                idata.setOrigo(hssfRow.getCell(12).getStringCellValue());
	                idata.setOrigin(hssfRow.getCell(13).getStringCellValue());
	                idata.setSchool(hssfRow.getCell(14).getStringCellValue());
	                idata.setAddress(hssfRow.getCell(15).getStringCellValue());
	                idata.setZip((int)hssfRow.getCell(16).getNumericCellValue());
	                idata.setInfo_tel((int)hssfRow.getCell(17).getNumericCellValue());
	                idata.setIs_fresh((int)hssfRow.getCell(18).getNumericCellValue());
	                idata.setStudent_status(hssfRow.getCell(19).getStringCellValue());
	                list.add(idata);
			 }
			 return list;
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 
	* @方法说明: 数据导出到Excel表格中，支持Excel 2003版本
	*
	* @最近更新时间：
	*
	* @param: @param list
	* @param: @return
	*
	* @throws：
	*
	* @return: boolean
	*
	 */
	public boolean isDatatoExcel(List<Exportdata> list)
	{
        //创建Excel文档
        HSSFWorkbook hwb = new HSSFWorkbook();
        Exportdata data = null;

        //创建一个sheet 
        HSSFSheet sheet = hwb.createSheet("学籍表");
        HSSFRow firstrow = sheet.createRow(0); // 下标为0的行开始
        
        //设置字段
        String[] names = new String[21];
        names[0] = "学号";
        names[1] = "姓名";
        names[2] = "曾用名";
        names[3] = "性别";
        names[4] = "院系";
        names[5] = "专业";
        names[6] = "级";
        names[7] = "学制";
        names[8] = "出生日期";
        names[9] = "政治面貌";
        names[10] = "身份证号";
        names[11] = "民族";
        names[12] = "籍贯";
        names[13] = "生源地";
        names[14] = "准考证号";
        names[15] = "来校前所在学校";
        names[16] = "家庭住址";
        names[17] = "邮政编码";
        names[18] = "联系电话";
        names[19] = "应届生";
        names[20] = "学籍状态";
        
        System.out.println(names.length);
        //插入第一行
        for (int j = 0; j < names.length; j++) {
        	HSSFCell fcell = firstrow.createCell(j);
        	fcell.setCellValue(names[j]);
        	fcell.setCellStyle(getCellStyle(hwb));
        	//firstrow.createCell(j).setCellValue(names[j]);
        }
       // firstrow.setRowStyle(getCellStyle(hwb));
        //循环插入数据
        for (int i = 0; i < list.size(); i++) {
            // 每循环一次创建一行
            HSSFRow row = sheet.createRow(i + 1);
            // 向当前行中的每个单元格插入数据
            data = list.get(i);//从list中获取一个值对象
            
               row.createCell(0).setCellValue(data.getStudent_id());
               row.createCell(1).setCellValue(data.getStudent_name());
               row.createCell(2).setCellValue(data.getName_old());
               row.createCell(3).setCellValue(data.getSex());
               row.createCell(4).setCellValue(data.getInfo_department());
               row.createCell(5).setCellValue(data.getStudent_major());
               row.createCell(6).setCellValue(data.getGrade());
               row.createCell(7).setCellValue(data.getEdu_systme());
               row.createCell(8).setCellValue(data.getBirth());
               row.createCell(9).setCellValue(data.getInfo_political());
               row.createCell(10).setCellValue(data.getId_number());
               row.createCell(11).setCellValue(data.getNation());
               row.createCell(12).setCellValue(data.getOrigo());
               row.createCell(13).setCellValue(data.getOrigin());
               row.createCell(14).setCellValue(data.getExam_number());
               row.createCell(15).setCellValue(data.getSchool());
               row.createCell(16).setCellValue(data.getAddress());
               row.createCell(17).setCellValue(data.getZip());
               row.createCell(18).setCellValue(data.getInfo_tel());
               row.createCell(19).setCellValue(data.getIs_fresh());
               row.createCell(20).setCellValue(data.getStudent_status());
        }
        
        //为每一列设置列宽自动
        for (int colu = 0; colu < names.length; colu++) { 
        	  sheet.autoSizeColumn((short)colu);
           }  
        
        // 创建文件输出流，准备输出电子表格
        
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");//设置日期格式
        String now = df.format(new Date());// new Date()为获取当前系统时间
        
        File f= new File("E:/学籍表"+now+".xls");
        FileOutputStream out = null;
		try
		{
			out = new FileOutputStream(f);
			hwb.write(out);
			return true;
		} catch (FileNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally
		{
			try
			{
				out.close();
			} catch (IOException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
        System.out.println("数据库导出成功:学籍表"+now+".xls");
		return false;
	}

	/**
	 * @方法说明:
	 * 
	 * @最近更新时间：
	 * 
	 * @param: @param args
	 * 
	 * @throws：
	 * 
	 * @return: void
	 * 
	 */
	public static void main(String[] args)
	{
		// TODO Auto-generated method stub
		ExcelUtil e = new ExcelUtil();
		Exportdata d = new Exportdata();
		Exportdata d2 = new Exportdata();
		d.setStudent_id(123123123);
		d2.setStudent_id(111111111);
		List<Exportdata> list = new ArrayList<Exportdata>();
		list.add(d);
		list.add(d2);
		//e.isDatatoExcel(list);
		
		try
		{
			List<Importdata> list1 = e.getExceltoData(new FileInputStream("E:/学籍表20140502.xls"));
			 
			System.out.println(list1.get(0).getBirth() );
		} catch (FileNotFoundException e1)
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (ParseException e1)
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
