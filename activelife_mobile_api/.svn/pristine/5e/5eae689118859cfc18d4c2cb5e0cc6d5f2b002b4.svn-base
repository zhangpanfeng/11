package com.activelife.mobile.product.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.proclassfily.po.ProClassfily;
import com.activelife.common.product.po.Product;
import com.activelife.db.product.dao.ProductDao;
import com.activelife.mobile.product.service.ProductService;

/**
 * 商品服务接口
 * @author liujinxin
 *
 */
@Service
public class ProductServiceImpl implements ProductService {
	private static final Log LOG = LogFactory.getLog(ProductServiceImpl.class);

	@Autowired
	private ProductDao productDao;
	
	public List<Product> findTopPro() throws BusinessException {
		LOG.info("start method <findTopPro>");
		return productDao.findTopPro();
	}

	public List<ProClassfily> findProClassfily() throws BusinessException {
		LOG.info("start method <findProByClass>");
		return productDao.findProClassfily();
	}

	public Product findPro(String proid) throws BusinessException {
		LOG.info("start method <findPro>");
		return productDao.findPro(proid);
	}

	public List<Product> findProByClass(Map<String, Object> classid) throws BusinessException {
		LOG.info("start method <findProByClass>");
		return productDao.findProByClass(classid);
	}
}
