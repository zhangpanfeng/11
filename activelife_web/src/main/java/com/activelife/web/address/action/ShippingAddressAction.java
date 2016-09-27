package com.activelife.web.address.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activelife.common.address.po.ShippingAddress;
import com.activelife.common.exception.BusinessException;
import com.activelife.common.user.po.Customer;
import com.activelife.web.address.service.ShippingAddressService;

/**
 * 
 * @author ljx
 *
 */
@Controller
public class ShippingAddressAction {

	@Autowired
	private ShippingAddressService shopAddService;
	private static final Log LOG = LogFactory.getLog(ShippingAddressAction.class);

	@RequestMapping(value = "/saveAdd")
	@ResponseBody
	public int saveShoppAdd(HttpServletRequest request, HttpServletResponse response) throws BusinessException {
		LOG.info("保存收货地址");
		String province = request.getParameter("province");
		String city = request.getParameter("city");
		String county = request.getParameter("county");
		String useraddr = request.getParameter("useraddr");
		String consignee = request.getParameter("consignee");
		String cellphone = request.getParameter("cellphone");
		
		String add = province+city+county+useraddr;
		
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer != null && !add.contains("null")){
			ShippingAddress address = new ShippingAddress();
			address.setUserId(customer.getCustomerId());
			address.setCellphone(cellphone);
			address.setCreateTime(new Date());
			address.setConsignee(consignee);
			address.setAddress(add);
			shopAddService.saveShippingAddress(address);
			return 1;
		}else{
			return 0;
		}
	}
	
	@RequestMapping(value="/getAllAdd")
	@ResponseBody
	public List<ShippingAddress> getAllAdd(HttpServletRequest request, HttpServletResponse response) throws BusinessException {
		LOG.info("查询收货地址");
		Map<String, Object> params = new HashMap<String, Object>();
		List<ShippingAddress> list = null;
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer != null){
			LOG.info("当前用户ID："+customer.getCustomerId());
			params.put("userId", customer.getCustomerId());
			list = shopAddService.findShippingAddresssByParams(params);
		}
		return list;
	}
	
	@RequestMapping(value="/delAddress")
	public String delAddress(HttpServletRequest request, HttpServletResponse response) throws BusinessException {
		LOG.info("删除收货地址");
		String addressId = request.getParameter("addressId");
		shopAddService.delAddressById(addressId);
		return "";
	}
	
}
