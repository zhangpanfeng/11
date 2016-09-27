package com.activelife.web.cart.service;

import java.util.List;
import java.util.Map;

import com.activelife.common.cart.po.Cart;
import com.activelife.common.exception.BusinessException;

/**
 * 
 * @author ljx
 *
 */
public interface ShoppingCarService {

	/**
	 * 添加购物车
	 * @param carst
	 * @return
	 * @throws BusinessException
	 */
	void saveCarst(Cart carst) throws BusinessException;
	
	/**
	 * 查看购物车
	 * @param userToken
	 * @return
	 * @throws BusinessException
	 */
	List<Cart> findCarst(Map<String, Object> userTOken) throws BusinessException;
	
	/**
	 * 删除所有商品
	 * @param userid
	 * @throws BusinessException
	 */
	void deleteAllCart(String userid) throws BusinessException;
	
	/**
	 *  根据ID 删除商品
	 * @param cartid
	 * @throws BusinessException
	 */
	void deleteCartById(String cartid) throws BusinessException;
	
	 /**
     * 根据商品ID查找购物车是否已存在此商品
     * @param proid
     * @return
     * @throws BusinessException
     */
	Cart getProByProId(Map<String, Object> map) throws BusinessException;
    
    /**
     * 根据用户ID查找此用户购物车商品数量
     * @param userid
     * @return
     * @throws BusinessException
     */
    int getProCount(Map<String, Object> userid) throws BusinessException;
    
    /**
     * 根据商品ID修改商品信息
     * @param cart
     * @return
     * @throws BusinessException
     */
    int updateCartByProId(Cart cart) throws BusinessException;
    
    /**
     * 根据ID修改商品信息
     * @param cart
     * @return
     * @throws BusinessException
     */
    int updateProByCart(Cart cart) throws BusinessException;
    
    /**
     * 根据购物车ID查询商品信息
     * @param cartid
     * @return
     * @throws BusinessException
     */
    Cart getProByCartId(String cartid) throws BusinessException;
}
