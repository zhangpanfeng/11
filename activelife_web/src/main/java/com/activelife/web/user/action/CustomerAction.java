package com.activelife.web.user.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.user.po.Customer;
import com.activelife.common.user.vo.CustomerVo;
import com.activelife.common.utils.MD5;
import com.activelife.common.utils.StringUtil;
import com.activelife.common.vo.ClientMessage;
import com.activelife.web.base.action.BaseAction;
import com.activelife.web.user.service.CustomerService;

/**
 * 用户控制器
 * 
 * @author ljx
 * 
 */
@Controller
public class CustomerAction extends BaseAction {
	/**
	 * 注入用户服务
	 */
	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = "/login_web")
	public ModelAndView login(HttpServletRequest reqest, Model model) throws BusinessException {
		return new ModelAndView("login");
	}

	@RequestMapping(value = "/register_web")
	public ModelAndView register(HttpServletRequest reqest, Model model) throws BusinessException {
		return new ModelAndView("register");
	}

	@RequestMapping(value = "/loginWeb")
	public ModelAndView loginWeb(HttpServletRequest reqest, Model model) throws BusinessException {

		Map<String, Object> params = new HashMap<String, Object>();
		String password = reqest.getParameter("password");
		String cellphone = reqest.getParameter("mobile");

		params.put("cellphone", cellphone);
		params.put("password", MD5.md5(password));
		Customer customer = customerService.findCustomerByParams(params);
		if (customer != null) {
			reqest.getSession().setAttribute("customer", customer);
			return new ModelAndView("redirect:/get_data.do");
		} else {
			return new ModelAndView("redirect:/register_web.do");
		}

	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest reqest, Model model, Customer customer) throws BusinessException {
		reqest.getSession().removeAttribute("customer");
		return new ModelAndView("redirect:/get_data.do");
	}

	@RequestMapping(value = "/registerWeb")
	public ModelAndView registerWeb(HttpServletRequest reqest, Model model, CustomerVo customerVo) throws BusinessException {
		if (!StringUtil.isEmpty(customerVo.getPassword())
				&& customerVo.getPassword().equals(customerVo.getConfirmPassword())) {
			Customer customer = customerService.findCustomerByPhone(customerVo.getCellphone());
			if(customer == null){
				Customer cust = new Customer();
				cust.setPassword(customerVo.getPassword());
				cust.setCellphone(customerVo.getCellphone());
				
				customerService.saveCustomer(cust);
				
				return new ModelAndView("redirect:/login_web.do");
			}else{
				return new ModelAndView("redirect:/login_web.do");
			}
		} else {
			return new ModelAndView("redirect:/register_web.do");
		}
	}

	@RequestMapping(value = "/editCustomer")
	public String editCustomer(Model model, Customer customer) throws BusinessException {
		ClientMessage clientMessage = new ClientMessage();

		model.addAttribute("clientMessage", clientMessage);
		return "";
	}

	@RequestMapping(value = "/editPassword")
	public String editPassword(Model model, Customer customer) throws BusinessException {
		ClientMessage clientMessage = new ClientMessage();

		model.addAttribute("clientMessage", clientMessage);
		return "";
	}

	@RequestMapping(value = "/showUserEditor")
	public String showUserEditor(Model model, Customer customer) throws BusinessException {
		ClientMessage clientMessage = new ClientMessage();

		model.addAttribute("clientMessage", clientMessage);
		return "user/userEditor";
	}

}
