package com.crc.legacymvc.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.crc.legacymvc.DAO.BlackListDAO;
import com.crc.legacymvc.bean.BlackListBean;

@Service
public class BlackListServiceImpl implements BlackListService{

	@Inject
	private BlackListDAO dao;
	
	@Override
	public List<BlackListBean> blacklist() throws Exception{
		return dao.blacklist();
	}
	
}
