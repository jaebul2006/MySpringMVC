package com.crc.legacymvc.DAO;

import java.util.List;

import com.crc.legacymvc.bean.BlackListBean;

public interface BlackListDAO {

	public List<BlackListBean> blacklist() throws Exception;
	public void insertblacklist(BlackListBean blb) throws Exception;
	
}

