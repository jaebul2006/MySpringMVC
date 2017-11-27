package com.crc.legacymvc.service;

import java.util.List;

import com.crc.legacymvc.bean.BlackListBean;

public interface BlackListService {

	public List<BlackListBean>blacklist() throws Exception;
	public void insertblacklist(BlackListBean blb) throws Exception;
	
}

