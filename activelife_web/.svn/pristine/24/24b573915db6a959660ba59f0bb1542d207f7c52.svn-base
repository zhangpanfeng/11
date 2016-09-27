package com.activelife.web.cart.service.impl;

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
import com.activelife.web.cart.service.ShoppingCarService;

@Service
public class ShoppingCarServiceImpl implements ShoppingCarService {
	private static final Log LOG = LogFactory.getLog(ShoppingCarServiceImpl.class);
	
	@Autowired
	private ShopCartDao shopDao;
	
	@Override
	public void saveCarst(Cart cart) throws BusinessException {
		LOG.info("start method <saveCarst> ---- web");
		cart.setCreateTime(new Date());
		shopDao.saveCart(cart);
	}

	@Override
	public List<Cart> findCarst(Map<String, Object> userTOken) throws BusinessException {
		LOG.info("start method <findCarst> --- web");
        List<Cart> carst = shopDao.findCart(userTOken);
       return carst;
	}

	@Override
	public void deleteAllCart(String userid) throws BusinessException {
		LOG.info("start method <deleteAllCart> --- web");
		shopDao.deleteAllCart(userid);
	}

	@Override
	public void deleteCartById(String cartid) throws BusinessException {
		LOG.info("start method <deleteCartById> --- web");
		shopDao.deleteCartById(cartid);
	}

	@Override
	public Cart getProByProId(Map<String, Object> map) throws BusinessException {
		LOG.info("start method <getProByProId> --- web");
		return shopDao.getProByProId(map);
	}

	@Override
	public int getProCount(Map<String, Object> userid) throws BusinessException {
		LOG.info("start method <getProCount> --- web");
		return shopDao.getProCount(userid);
	}

	@Override
	public int updateCartByProId(Cart cart) throws BusinessException {
		LOG.info("start method <updateCartByProId> --- web");
		return shopDao.updateCartByProId(cart);
	}

	@Override
	public int updateProByCart(Cart cart) throws BusinessException {
		LOG.info("start method <updateProByCart> --- web");
		return shopDao.updateproByCart(cart);
	}

	@Override
	public Cart getProByCartId(String cartid) throws BusinessException {
		LOG.info("start method <getProByCartId> --- web");
		return shopDao.getProByCartId(cartid);
	}
}
