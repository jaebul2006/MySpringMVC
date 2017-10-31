package com.crc.legacymvc.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.crc.legacymvc.bean.BlackListBean;

@Repository
public class BlackListDAOImpl implements BlackListDAO {

	private static final String namespace = "com.crc.legacymvc.BlackListMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<BlackListBean> blacklist() throws Exception{
		return sqlSession.selectList(namespace + ".blacklist");
	}
	
	@Override
	public void insertblacklist(BlackListBean blb) throws Exception{
		sqlSession.insert(namespace + ".insertblacklist", blb); 
	}
	
}

