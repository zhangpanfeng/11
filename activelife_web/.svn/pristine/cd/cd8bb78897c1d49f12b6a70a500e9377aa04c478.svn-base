package com.activelife.web.product.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.product.po.Product;
import com.activelife.db.product.dao.ProductDao;
import com.activelife.web.product.service.ProductService;

/**
 * 商品信息
 * @author liujinxin
 *
 */
@Service
public class ProductServiceImpl implements ProductService {
	private static final Log LOG = LogFactory.getLog(ProductServiceImpl.class);

	@Autowired
	private ProductDao productDao;
	
	@Override
	public List<Product> findTopPro() throws BusinessException {
		LOG.info("start method <findTopPro>");
		return productDao.findTopPro();
	}

	@Override
	public Product findPro(String proid) throws BusinessException {
		LOG.info("start method <findPro>");
		return productDao.findPro(proid);
	}

	@Override
	public List<Product> findProByClass(Map<String, Object> classid) throws BusinessException {
		LOG.info("start method <findProByClass>");
		return productDao.findProByClass(classid);
	}

	@Override
	public List<Product> findPro() throws BusinessException {
		LOG.info("start method <findPro>");
		return productDao.findTopPro();
	}
}
