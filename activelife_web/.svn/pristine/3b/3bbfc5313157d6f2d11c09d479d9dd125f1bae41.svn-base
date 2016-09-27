package com.activelife.web.order.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.activelife.common.cart.po.Cart;
import com.activelife.common.exception.BusinessException;
import com.activelife.web.cart.service.ShoppingCarService;
//import com.activelife.web.order.service.OrderService;

@Controller
public class OrderAction {

	private static final Log LOG = LogFactory.getLog(OrderAction.class);
//	@Autowired
//	private OrderService orderService;
	@Autowired
	private ShoppingCarService shopService;
	
	@RequestMapping(value = "/Allorder")
	public ModelAndView getAll(HttpServletRequest request, HttpServletResponse response)throws BusinessException {
		LOG.info("结算商品，到订单页");
		String cartid[] = request.getParameter("cartId").split(",");
		List<Cart> list = new ArrayList<Cart>();
		for (int i = 0; i < cartid.length; i++) {
			Cart cart = shopService.getProByCartId(cartid[i]);
			if(cart != null){
				list.add(cart);
			}
		}
		request.setAttribute("list", list);
		return new ModelAndView("/product/orderInfo");
	}
}
