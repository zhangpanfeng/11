package com.activelife.mobile.cart.service;

import java.util.List;
import java.util.Map;

import com.activelife.common.cart.po.Cart;
import com.activelife.common.exception.BusinessException;

public interface ShopCartService {

    /**
     * 添加购物车
     * 
     * @param cart
     * @return
     * @throws BusinessException
     */
    void saveCart(Cart cart) throws BusinessException;

    /**
     * 查看购物车
     * 
     * @param userToken
     * @return
     * @throws BusinessException
     */
    List<Cart> findCart(Map<String, Object> userTOken) throws BusinessException;

    /**
     * 删除所有商品
     * 
     * @param userId
     * @throws BusinessException
     */
    void deleteAllCart(String userId) throws BusinessException;

    /**
     * 根据ID 删除商品
     * 
     * @param cartId
     * @throws BusinessException
     */
    void deleteCartById(String cartId) throws BusinessException;
}
