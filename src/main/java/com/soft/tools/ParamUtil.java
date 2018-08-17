package com.soft.tools;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.soft.biz.ParamBizImpl;
import com.soft.entity.Tblparam;
@Component
public class ParamUtil {
	/*
	 * 定义父级常量，以便利用常量获取子集
	 */
	public final static String SCHOOLING = "学历";
	public final static String VACATION = "职业";
	public final static String LEAGUER_STATE = "会员状态";
	/*
	 * 定义参数map和父级列表
	 */
	private static Map<String, List<Tblparam>> paramMap;
	private static List<Tblparam> parentList;
	/*
	 * 参数map和父级列表初始化
	 */
	@Resource
	private    ParamBizImpl paramBizImpl;
//	private static ParamBizImpl biz;
	@PostConstruct
	public void init() {
//		biz = this.paramBizImpl;
		parentList = this.paramBizImpl.getParamParentList();
		paramMap = this.paramBizImpl.getParamChildList(parentList);
	}
//在使用注解的时候不能把需要注解注入的数据放在静态代码快中使用
//	static {
////	ParamBizImpl paramBizImpl1 = new ParamBizImpl();
////		System.out.println(biz);
////		parentList = biz.getParamParentList();
////		paramMap = biz.getParamChildList(parentList);
//	}
	/*
	 * 根据传进来的常量，和参数值得到对应参数的实体类
	 */
	public static Tblparam getParamChildByValue(String paramParentName, int paramValue) {
		List<Tblparam> paramChildList = paramMap.get(paramParentName);
		for (int i = 0; i < paramChildList.size(); i++) {
			if (paramChildList.get(i).getValue().intValue() == paramValue) {
				return paramChildList.get(i);
			}
		}
		return null;
	}
	/*
	 * 根据传进来的常量，和id得到对应参数的实体类
	 */
	public static Tblparam getParamChildByid(String paramParentName, long paramId) {
		List<Tblparam> paramChildList = paramMap.get(paramParentName);
		for (int i = 0; i < paramChildList.size(); i++) {
			if (paramChildList.get(i).getId() == paramId) {
				return paramChildList.get(i);
			}
		}
		return null;
	}
	/*
	 * 根据传进来的常量得到子菜单列表
	 */
	public static List<Tblparam> getParamChildList(String paramParentName) {
		List<Tblparam> paramChildList = paramMap.get(paramParentName);
		return paramChildList;
	}
//	public ParamBizImpl getParamBizImpl() {
//		return paramBizImpl;
//	}
//	public void setParamBizImpl(ParamBizImpl paramBizImpl) {
//		this.paramBizImpl = paramBizImpl;
//	}
	
}
