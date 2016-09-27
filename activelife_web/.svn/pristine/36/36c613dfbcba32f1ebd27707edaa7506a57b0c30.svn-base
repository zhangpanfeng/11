package com.activelife.web.classfily.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.activelife.common.exception.BusinessException;
import com.activelife.common.proclassfily.po.ProClassfily;
import com.activelife.web.classfily.service.ClassFilyService;

/**
 * 
 * @author ljx
 *
 */
@Controller
public class ClassfilyAction {

	private static final Log LOG = LogFactory.getLog(ClassfilyAction.class);
	
	@Autowired
	private ClassFilyService classfilyService;
	
	@RequestMapping(value = "/allClassfily")
	@ResponseBody
	public List<ProClassfily> getAll(HttpServletRequest request, HttpServletResponse response) throws BusinessException {
		LOG.info("获取所有商品分类信息");
		List<ProClassfily> list = classfilyService.getAll();
		LOG.info("获取所有商品分类信息<list>"+list);
		return list;
	}
}
