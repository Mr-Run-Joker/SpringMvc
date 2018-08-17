package com.soft.biz;

import java.util.List;
import java.util.Map;

import com.soft.entity.Tblparam;

public interface ParamBiz {
	/*
	 * 得到所有的父级列表
	*/
 public List<Tblparam> getParamParentList();
 /*
	 * 根据父级得到所有的子级列表
	*/
public Map<String, List<Tblparam>> getParamChildList(List<Tblparam> parentList);
}
