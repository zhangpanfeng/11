package com.activelife.mobile.cart.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.cart.po.Cart;
import com.activelife.common.exception.BusinessException;
import com.activelife.db.cart.dao.ShopCartDao;
import com.activelife.mobile.cart.service.ShopCartService;

/**
 * 购物车接口实现
 * 
 * @author liujinxin
 * 
 */
@Service
public class ShopCartServiceImpl implements ShopCartService {
    private static final Log LOG = LogFactory.getLog(ShopCartServiceImpl.class);

    @Autowired
    private ShopCartDao shopCartDao;

    public void saveCart(Cart cart) throws BusinessException {
        LOG.info("start method <saveCart>");
        cart.setCreateTime(new Date());
        shopCartDao.saveCart(cart);
    }

    public List<Cart> findCart(Map<String, Object> userTOken) throws BusinessException {
        LOG.info("start method <getCart>");
        List<Cart> cartList = shopCartDao.findCart(userTOken);

        return cartList;
    }

    public void deleteAllCart(String userId) throws BusinessException {
        LOG.info("start method <deleteAllCart>");
        shopCartDao.deleteAllCart(userId);
    }

    public void deleteCartById(String cartId) throws BusinessException {
        LOG.info("start method <deleteCartById>");
        shopCartDao.deleteCartById(cartId);
    }
}
