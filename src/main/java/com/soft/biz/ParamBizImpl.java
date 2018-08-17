package com.soft.biz;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.soft.entity.Tblparam;
import com.soft.mapper.ParamInfoMapper;

@Service
public class ParamBizImpl implements ParamBiz {
	// BaseDao baseDao=null;
	// private SqlSession session;
	@Resource
	private ParamInfoMapper paramInfoMapper;

	public ParamBizImpl() {
		// baseDao=new BaseDaoImpl();
		// session=DButil.getSqlSession();
		// DButil.getApplicationContext().getBean(arg0);
		// mapper=session.getMapper(ParamInfoMapper.class);
	}

	@Override
	public List<Tblparam> getParamParentList() {
//		System.out.println(paramInfoMapper);
		// 初始化查询条件
		return paramInfoMapper.getParamParent();
	}

	@Override
	public Map<String, List<Tblparam>> getParamChildList(List<Tblparam> parentList) {
		// 初始化map
		Map<String, List<Tblparam>> paramMap = new HashMap<String, List<Tblparam>>();
		// 初始化查询条件
		Tblparam tblparam = new Tblparam();
		for (int i = 0; i < parentList.size(); i++) {
			List<Tblparam> childList = paramInfoMapper.getParamChild(parentList.get(i).getId());
			paramMap.put(parentList.get(i).getName(), childList);
		}
		return paramMap;
	}

	public ParamInfoMapper getParamInfoMapper() {
		return paramInfoMapper;
	}

	public void setParamInfoMapper(ParamInfoMapper paramInfoMapper) {
		this.paramInfoMapper = paramInfoMapper;
	}
	

}
