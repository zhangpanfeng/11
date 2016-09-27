package com.activelife.web.classfily.service;

import java.util.List;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.proclassfily.po.ProClassfily;

/**
 * 
 * @author liujinxin
 *
 */
public interface ClassFilyService {

	/**
	 * 
	 * 获得所有分类信息
	 * @return
	 */
	List<ProClassfily> getAll() throws BusinessException;
	
	/**
	 * 根据分类ID查询子分类
	 * @param code
	 * @return
	 */
	List<ProClassfily> getClassFilyByCode(String code) throws BusinessException;
}
