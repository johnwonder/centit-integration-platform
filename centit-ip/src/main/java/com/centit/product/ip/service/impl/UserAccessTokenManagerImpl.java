package com.centit.product.ip.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.centit.framework.hibernate.service.BaseEntityManagerImpl;
import com.centit.product.ip.dao.UserAccessTokenDao;
import com.centit.product.ip.po.UserAccessToken;
import com.centit.product.ip.service.UserAccessTokenManager;
import com.centit.support.algorithm.DatetimeOpt;
import com.centit.support.algorithm.UuidOpt;

@Service("userAccessTokenManager")
@Transactional
public class UserAccessTokenManagerImpl extends BaseEntityManagerImpl<UserAccessToken,String,UserAccessTokenDao>
        implements UserAccessTokenManager {

    //private static final SysOptLog sysOptLog = SysOptLogFactoryImpl.getSysOptLog();

    @Override
    @Resource(name = "userAccessTokenDao")
    public void setBaseDao(UserAccessTokenDao baseDao) {
        super.baseDao = baseDao;
    }

	@Override
	@Transactional
	public UserAccessToken createNewAccessToken(String userCode) {
		UserAccessToken userToken = new UserAccessToken(userCode);
		userToken.setTokenId(UuidOpt.getUuidAsString32());
		userToken.setSecretAccessKey(UuidOpt.getUuidAsString36());
		userToken.setCreateTime(DatetimeOpt.currentUtilDate());
		baseDao.saveNewObject(userToken);
		return userToken;
	}

	@Override
	@Transactional
	public List<UserAccessToken> listAccessTokenByUser(String userCode) {
		return baseDao.listObjects("from UserAccessToken where userCode=?",userCode);
	}
	
}

