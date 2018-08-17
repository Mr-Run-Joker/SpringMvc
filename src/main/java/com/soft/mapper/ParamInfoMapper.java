package com.soft.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.soft.annotation.MapperAnnotation;
import com.soft.entity.Tblparam;
@MapperAnnotation
public interface ParamInfoMapper {
	/*
	 * 得到所有的父级参数
	*/
	public List<Tblparam> getParamParent();
	/*
	 * 得到所有的子级参数
	*/
	public List<Tblparam> getParamChild(long parentId);
	
}
