package com.crc.legacymvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crc.legacymvc.bean.BlackListBean;
import com.crc.legacymvc.service.BlackListServiceImpl;

@Controller
public class RegistmemberController {
	
	@Autowired
	private BlackListServiceImpl bls;
	
	@RequestMapping(value = "/registmember", method = RequestMethod.POST)
	public String registmember(HttpServletRequest request) throws Exception{
		
		BlackListBean new_member = new BlackListBean();
		new_member.setId(request.getParameter("id"));
		new_member.setPassword(request.getParameter("password"));
		bls.insertblacklist(new_member);
		return "registmember";
		
	}
}