package com.activelife.mobile.product.service;

import java.util.List;
import java.util.Map;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.proclassfily.po.ProClassfily;
import com.activelife.common.product.po.Product;

public interface ProductService {
	/**
	 * 查询商品信息，放到首页
	 * @return
	 */
	List<Product> findTopPro() throws BusinessException;
	
	/**
	 * 根据商品类别查询商品信息
	 * @return
	 * @throws BusinessException
	 */
	List<ProClassfily> findProClassfily() throws BusinessException;
	
	/**
	 * 根据商品ID查询商品具体信息
	 * @param proid
	 * @return
	 * @throws BusinessException
	 */
	Product findPro(String proid) throws BusinessException;
	
	/**
	 * 根据商品类别查询商品信息
	 * @param classid
	 * @return
	 * @throws BusinessException
	 */
	List<Product> findProByClass(Map<String, Object> classid) throws BusinessException;
}
