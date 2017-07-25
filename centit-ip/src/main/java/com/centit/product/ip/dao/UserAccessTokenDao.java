package com.centit.product.ip.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.centit.framework.core.dao.CodeBook;
import com.centit.framework.hibernate.dao.BaseDaoImpl;
import com.centit.product.ip.po.UserAccessToken;

@Repository
public class UserAccessTokenDao extends BaseDaoImpl<UserAccessToken,String> {

    public Map<String, String> getFilterField() {
        if (filterField == null) {
            filterField = new HashMap<String, String>();
            filterField.put("tokenId", CodeBook.EQUAL_HQL_ID);
            filterField.put("userCode", CodeBook.EQUAL_HQL_ID);
        }
        return filterField;
    }
 
}
