package com.activelife.web.order.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.order.po.Order;
import com.activelife.db.order.dao.OrderDao;
import com.activelife.web.order.service.OrderService;

/**
 * 
 * @author ljx
 *
 */
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public void saveOrder(Order order) throws BusinessException {
		orderDao.saveOrder(order);
	}

	@Override
	public int updateOrder(Order order) throws BusinessException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Order findOrderByParams(Map<String, Object> params) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order findOrderById(String orderId) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findOrdersByParams(Map<String, Object> params) throws BusinessException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getTotalCount(Map<String, Object> params) throws BusinessException {
		// TODO Auto-generated method stub
		return 0;
	}

}
