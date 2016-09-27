package com.activelife.web.captcha.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activelife.common.exception.BusinessException;
import com.activelife.web.captcha.service.CaptchaService;

/**
 * 验证码控制器
 * 
 * @author liujinxin
 *
 */
@Controller
public class CaptchaAction {

	@Autowired
	private CaptchaService captchaService;
	
	@RequestMapping(value = "/get_captcha")
    @ResponseBody
    public Object getCaptcha(HttpServletRequest request,HttpServletResponse response) throws BusinessException {
		Map<String, Object> map = new HashMap<String, Object>();
		String moblie = request.getParameter("mobliephone");
		if(moblie != null && captchaService.ismoblie(moblie)){
		 	String captcha = captchaService.NextInt()+"";
		 	map.put("result", 0);
		 	map.put("captcha", captcha);
		 	request.getSession().setAttribute("captchaMap", moblie+";"+captcha);
		}else {
			map.put("result", 1);
		}
		return map;
	}
	
	@RequestMapping(value="/confirm_captcha")
	public Object confirmCaptcha(HttpServletRequest request,HttpServletResponse response) throws BusinessException {
		Map<String, Object> map = new HashMap<String, Object>();
		String moblie = request.getParameter("mobliephone");
		String captcha = request.getParameter("captcha");
		String captchaMap = (String) request.getSession().getAttribute("captchaMap");
		String[] str = captchaMap.split(";");
		if(str[0].equals(moblie) && str[1].equals(captcha)){
		 	map.put("result", 0);
		}else {
			map.put("result", 1);
		}
		return map;
	}
}
