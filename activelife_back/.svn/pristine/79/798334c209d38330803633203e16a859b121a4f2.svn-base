package com.activelife.back.user.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.activelife.back.base.action.BaseAction;
import com.activelife.back.user.service.SystemUserService;
import com.activelife.common.exception.BusinessException;
import com.activelife.common.user.po.SystemUser;
import com.activelife.common.utils.MD5;
import com.activelife.common.utils.ValidateCodeGenerator;
import com.activelife.common.utils.ValidateCodeGenerator.ValidateCode;
import com.activelife.common.vo.ClientMessage;

/**
 * 用户控制器
 * 
 * @author zhangpanfeng
 * 
 */
@Controller
public class SystemUserAction extends BaseAction  { 
    /**
     * 注入用户服务
     */
    @Autowired
    private SystemUserService systemUserService;
   
    private static final String URL_PREFIX = "/systemuser";
    private static final String PRODUCT_EDIT_PAGE = URL_PREFIX + "/getAdmin";
    private static final String PRODUCT_MODIFYPASS_PAGE = URL_PREFIX + "/modifyPass";
    private static final String PRODUCT_LOGIN_PAGE ="../../login";

    @RequestMapping(value = "/login")
    public String login(Model model, HttpServletRequest req, SystemUser systemUser) throws BusinessException {
        ClientMessage clientMessage = new ClientMessage();
        String target = "../../login";
        if (systemUser != null) {
            ValidateCode validateCode = (ValidateCode) req.getSession().getAttribute("validateCode");
            if(validateCode != null && validateCode.getCode().equals(systemUser.getValidateCode())){
                Map<String, Object> params = new HashMap<String, Object>();
                params.put("userName", systemUser.getUserName());
                params.put("password", MD5.md5(systemUser.getPassword()));
                systemUser = systemUserService.findSystemUserByParams(params);
                if(systemUser == null){
                    clientMessage.setMessage("用户名或密码错误！");
                }else{
                    target = "../../main";
                    req.getSession().setAttribute("systemUser", systemUser);
                }
            }else{
                clientMessage.setMessage("验证码错误！");
            }
        } 
        model.addAttribute("clientMessage", clientMessage);

        return target;
    }

    @RequestMapping("/validateCode")
    public void validateCode(HttpServletRequest req, HttpServletResponse res) {
        try {
            res.setHeader("Pragma", "No-cache");
            res.setHeader("Cache-Control", "no-cache");
            res.setDateHeader("Expires", 0);
            ValidateCode validateCode = ValidateCodeGenerator.generateNumberValidateCode();
            req.getSession().setAttribute("validateCode", validateCode);
            ImageIO.write(validateCode.getImage(), "JPEG", res.getOutputStream());
            res.getOutputStream().flush();
            res.getOutputStream().close();
            res.flushBuffer();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
/*  查看管理员个人信息  
 *  
*/   @RequestMapping(value="/ShowmeAction")
    public String getAdmin(HttpServletRequest req,HttpServletResponse res,SystemUser systemUser ) throws IOException{
    	try {
    		 
             HttpSession session=req.getSession();
              systemUser=(SystemUser) session.getAttribute("systemUser");
            
              System.out.println(systemUser);
              
             
		} catch (IllegalStateException e) {
            e.printStackTrace();
        }
		return PRODUCT_EDIT_PAGE;
    }
/*  跳转到修改密码的页面  
 *  
*/ 
@RequestMapping(value="/toModifyPass")
public String toModifyPass(HttpServletRequest req,HttpServletResponse res,SystemUser systemUser){
	try {
		 HttpSession session=req.getSession();
         systemUser=(SystemUser) session.getAttribute("systemUser");
		if(systemUser!=null){
			return PRODUCT_MODIFYPASS_PAGE;	
		}
	} catch (IllegalStateException e) {
        e.printStackTrace();
    }
	
	return null;
	
	
} 

/*  修改密码 
 *  
*/ 
@RequestMapping(value="/modifyPass")
public String modifyPass(SystemUser systemUser,HttpServletRequest req){
	 ClientMessage clientMessage = new ClientMessage();
	 String target = "../../login";
	 try {
		 String password=MD5.md5(req.getParameter("password"));
		 systemUser.setPassword(password);
		 System.out.println(systemUser.getPassword());
		 
         int rowNum=systemUserService.updateSystemUser(systemUser);
		if(rowNum!=1){
			 LOG.info("更新密码失败！");
			 LOG.info(rowNum);
			 clientMessage.setMessage("更新密码失败！");
			 return PRODUCT_MODIFYPASS_PAGE;
		}
		 LOG.info("更新密码成功！");
		 LOG.info(rowNum);
		 clientMessage.setMessage("更新密码成功！");
		 return PRODUCT_LOGIN_PAGE; 
	} catch (IllegalStateException e) {
        e.printStackTrace();
    }
	return null;
	
	
	
	
} 

}
