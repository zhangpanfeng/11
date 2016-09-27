package com.activelife.mobile.cart.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activelife.common.cart.po.Cart;
import com.activelife.common.exception.BusinessException;
import com.activelife.mobile.cart.service.ShopCartService;

/**
 * 购物车控制器
 * 
 * @author liujinxin
 * 
 */
@Controller
public class ShoppingCartAction {

    @Autowired
    private ShopCartService shopCartService;

    @RequestMapping(value = "/add_cart")
    @ResponseBody
    public Object addCart(HttpServletRequest request, HttpServletResponse response, Cart cart) throws BusinessException {
        Map<String, Object> map = new HashMap<String, Object>();
        String userToken = request.getParameter("usertoken");
        if (userToken != "") {
            cart.setUser_id(userToken);
            shopCartService.saveCart(cart);
            map.put("result", 0);
        } else {
            map.put("result", 1);
        }
        return map;
    }

    @RequestMapping(value = "/get_cart")
    public Object getCart(HttpServletRequest request, HttpServletResponse response) throws BusinessException {
        Map<String, Object> map = new HashMap<String, Object>();
        String userToken = request.getParameter("usertoken");
        if (userToken != null && !"".equals(userToken)) {
            map.put("userToken", userToken);
            List<Cart> cart = shopCartService.findCart(map);
            map.clear();
            map.put("jsonData", cart);
            map.put("result", 0);
        } else {
            map.put("result", 1);
        }
        return map;
    }

    @RequestMapping(value = "/del_cart")
    public Object deleteCart(HttpServletRequest request, HttpServletResponse response) throws BusinessException {
        Map<String, Object> map = new HashMap<String, Object>();
        String userid = request.getParameter("userid");
        String cartid = request.getParameter("cartid");
        if (userid != null && !"".equals(userid)) {
            shopCartService.deleteAllCart(userid);
            map.put("result", 0);
        } else if (cartid != null && !"".equals(cartid)) {
            shopCartService.deleteCartById(cartid);
            map.put("result", 0);
        } else {
            map.put("result", 1);
        }
        return map;
    }
}
