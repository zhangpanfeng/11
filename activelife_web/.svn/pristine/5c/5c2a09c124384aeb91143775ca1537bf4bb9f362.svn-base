package com.activelife.web.cart.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.activelife.common.cart.po.Cart;
import com.activelife.common.exception.BusinessException;
import com.activelife.common.user.po.Customer;
import com.activelife.web.cart.service.ShoppingCarService;

/**
 * 
 * @author ljx
 *
 */
@Controller
public class ShoppingCarAction {

	private static final Log LOG = LogFactory.getLog(ShoppingCarAction.class);
	private ObjectMapper jsonMapper = new ObjectMapper();
	@Autowired
	private ShoppingCarService shopCarService;
	
	@RequestMapping(value = "/addShoppCar")
	@ResponseBody
	public void addCart(HttpServletRequest request,HttpServletResponse response,Cart cart) throws BusinessException {
		LOG.info("添加购物车");
		Map<String, Object> map = new HashMap<String, Object>();
		
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		String proId = request.getParameter("proId");
		String proName = request.getParameter("proName");
		String proStandard = request.getParameter("proStandard");
		String proPrice = request.getParameter("proPrice").substring(1);
		String num = request.getParameter("num");
		
		if(customer != null){
			map.put("userid", customer.getCustomerId());
			map.put("proid", proId);
			Cart c = shopCarService.getProByProId(map);
			map.clear();
			if(c != null){
				if((c.getProduct_num()+Integer.parseInt(num))>10){
					map.put("result", 2);
				}else{
					cart.setPro_id(proId);
					cart.setUser_id(customer.getCustomerId());
					cart.setProduct_num(Integer.parseInt(num));
					shopCarService.updateCartByProId(cart);
					map.put("result", 0);
				}
			}else{
				cart.setUser_id(customer.getCustomerId());
				cart.setPro_id(proId);
				cart.setPro_name(proName);
				cart.setProduct_standard(proStandard);
				cart.setProduct_price(Double.parseDouble(proPrice));
				cart.setProduct_num(Integer.parseInt(num));
				shopCarService.saveCarst(cart);
				map.put("result", 0);
			}
		}else{
			map.put("result", 1);
		}
		try {
			String responseStr = jsonMapper.writeValueAsString(map);
			System.out.println("返回信息：" + responseStr );
			response.getWriter().write(responseStr);
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getCarInfo")
	public ModelAndView getCart(HttpServletRequest request,HttpServletResponse response) throws BusinessException {
		LOG.info("查看购物车");
		Map<String, Object> map = new HashMap<String, Object>();
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer != null){
			map.put("userToken", customer.getCustomerId());
			List<Cart> cart = shopCarService.findCarst(map);
			if(cart == null || cart.isEmpty()){
				request.setAttribute("list", null);
			}else{
				request.setAttribute("list", cart);
			}
		}
		return new ModelAndView("/product/cart");
	}
	
	@RequestMapping(value = "/delCar")
	@ResponseBody
	public int deleteCart(HttpServletRequest request,HttpServletResponse response) throws BusinessException {
		LOG.info("删除购物车");
		String cartid = request.getParameter("cartid");
		if(cartid != null && !"".equals(cartid)){
			shopCarService.deleteCartById(cartid);
			return 1;
		}
		return 0;
	}
	
	@RequestMapping(value = "/getProCount")
	@ResponseBody
	public int getProCount(HttpServletRequest request,HttpServletResponse response) throws BusinessException {
		LOG.info("根据ID查询购物车商品数量");
		Map<String, Object> map = new HashMap<String, Object>();
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer != null){
			map.put("userid", customer.getCustomerId());
			return shopCarService.getProCount(map);
		}else{
			return 0;
		}
	}
	
	@RequestMapping(value = "/updateCart")
	@ResponseBody
	public int updateCart(HttpServletRequest request,HttpServletResponse response) throws BusinessException {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		String count = request.getParameter("count");
		String carid = request.getParameter("carid");
		if(customer != null){
			Cart cart = new Cart();
			cart.setOrd_id(carid);
			cart.setProduct_num(Integer.parseInt(count));
			return shopCarService.updateProByCart(cart);
		}else{
			return 0;
		}
	}
}
