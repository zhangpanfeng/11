package com.activelife.mobile.captcha.service.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.exception.BusinessException;
import com.activelife.db.captcha.dao.CaptchaDao;
import com.activelife.mobile.captcha.service.CaptchaService;

/**
 * 
 * @author liujinxin
 *
 */
@Service
public class CaptchaServiceImpl implements CaptchaService {
	private static final Log LOG = LogFactory.getLog(CaptchaServiceImpl.class);
	
	@Autowired
	private CaptchaDao captchaDao;
	
	public int NextInt() throws BusinessException {
		LOG.info("start method <NextInt>");
		int catpcha = captchaDao.NextInt();
		return catpcha;
	}

	public boolean ismoblie(String moblie) throws BusinessException {
		LOG.info("start method <ismoblie>");
		boolean bool = captchaDao.ismoblie(moblie);
		return bool;
	}

}
