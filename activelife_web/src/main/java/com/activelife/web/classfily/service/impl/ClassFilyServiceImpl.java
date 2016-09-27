package com.activelife.web.classfily.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.proclassfily.po.ProClassfily;
import com.activelife.db.product.dao.ProductDao;
import com.activelife.web.classfily.service.ClassFilyService;

/**
 * 
 * @author liujinxin
 *
 */
@Service
public class ClassFilyServiceImpl implements ClassFilyService {
	private static final Log LOG = LogFactory.getLog(ClassFilyServiceImpl.class);
	
	@Autowired
	private ProductDao proDao;
	
	@Override
	public List<ProClassfily> getAll() throws BusinessException {
		LOG.info("start method <findProClassfily> ---- web");
		return proDao.findProClassfily();
	}

	@Override
	public List<ProClassfily> getClassFilyByCode(String code) throws BusinessException {
		return null;
	}

}
