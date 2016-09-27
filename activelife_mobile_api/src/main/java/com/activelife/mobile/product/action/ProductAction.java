package com.activelife.mobile.product.action;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.proclassfily.po.ProClassfily;
import com.activelife.common.product.po.Product;
import com.activelife.mobile.product.service.ProductService;

/**
 * 商品信息
 * @author liujinxin
 *
 */
@Controller
public class ProductAction {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/get_home_data")
	@ResponseBody
	public Object getTopPro(HttpServletResponse response,HttpServletRequest request) throws BusinessException{
		Map<String, Object> map = new HashMap<String, Object>();
		List<Product> proList = productService.findTopPro();
		if(proList != null){
			map.put("jsonData", proList);
			map.put("result", 0);
		}else{
			map.put("result", 1);
		}
		return map;
	}
	
	@RequestMapping(value = "/get_pro_class")
	public Object getProClassfily(HttpServletResponse response,HttpServletRequest request) throws BusinessException{
		Map<String, Object> map = new HashMap<String, Object>();
		List<ProClassfily> proClassfilyList = productService.findProClassfily();
		if(proClassfilyList != null){
			map.put("jsonData", proClassfilyList);
			map.put("result", 0);
		}else{
			map.put("result", 1);
		}
		return map;
	}
	
	@RequestMapping(value = "/get_pro_info")
	public Object getProInfo(HttpServletResponse response,HttpServletRequest request) throws BusinessException{
		Map<String, Object> map = new HashMap<String, Object>();
		String proid = request.getParameter("proid");
		Product proInfo = productService.findPro(proid);
		if(proInfo != null){
			map.put("jsonData", proInfo);
			map.put("result", 0);
		}else{
			map.put("result", 1);
		}
		return map;
	}
	
	@RequestMapping(value = "/get_pro_info_class")
	public Object getProByClass(HttpServletResponse response,HttpServletRequest request) throws BusinessException{
		Map<String, Object> map = new HashMap<String, Object>();
		String classid = request.getParameter("classid");
		map.put("classid", classid);
		List<Product> proList = productService.findProByClass(map);
		map.clear();
		if(proList != null){
			map.put("jsonData", proList);
			map.put("result", 0);
		}else{
			map.put("result", 1);
		}
		return map;
	}
}
