package com.activelife.web.address.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.activelife.common.address.po.ShippingAddress;
import com.activelife.common.exception.BusinessException;
import com.activelife.db.address.dao.ShippingAddressDao;
import com.activelife.web.address.service.ShippingAddressService;

/**
 * 收货地址服务实现
 * 
 * @author zhangpanfeng
 * 
 */
@Service
public class ShippingAddressServiceImpl implements ShippingAddressService {
    private static final Log LOG = LogFactory.getLog(ShippingAddressServiceImpl.class);

    @Autowired
    private ShippingAddressDao shippingAddressDao;

    public String saveShippingAddress(ShippingAddress address) throws BusinessException {
        LOG.info("start method<saveShippingAddress>" + address);
        shippingAddressDao.saveShippingAddress(address);
        String addressId = address.getAddressId();

        return addressId;
    }

    public int updateShippingAddress(ShippingAddress address) throws BusinessException {
        LOG.info("start method<updateShippingAddress>" + address);
        int num = shippingAddressDao.updateShippingAddress(address);

        return num;
    }

    public ShippingAddress findShippingAddressById(String addressId) throws BusinessException {
        LOG.info("start method<findShippingAddressById>" + addressId);
        ShippingAddress address = shippingAddressDao.findShippingAddressById(addressId);

        return address;
    }

    public List<ShippingAddress> findShippingAddresssByParams(Map<String, Object> params) throws BusinessException {
        LOG.info("start method<findShippingAddresssByParams>" + params);
        List<ShippingAddress> addressList = shippingAddressDao.findShippingAddresssByParams(params);

        return addressList;
    }

	@Override
	public int delAddressById(String addressId) throws BusinessException {
		 LOG.info("start method<delAddressById>" + addressId);
		 return shippingAddressDao.delAddressById(addressId);
	}

}
