package com.soft.tools;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	/*
	 * 时间格式
	 */
	private static SimpleDateFormat sdf =null;
	private static SimpleDateFormat sdfday =null;
	static{
		sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sdfday = new SimpleDateFormat("yyyy-MM-dd");
	}
	public static String getDateStr(){
		return sdf.format(new Date());
	}
	public static String getDateDay(){
		return sdfday.format(new Date());
	}
}
