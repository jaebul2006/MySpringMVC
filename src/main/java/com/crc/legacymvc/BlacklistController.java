package com.crc.legacymvc;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crc.legacymvc.bean.BlackListBean;
import com.crc.legacymvc.service.BlackListService;

@Controller
public class BlacklistController {
	
	@Inject
	BlackListService service;
	
	@RequestMapping(value="/blacklist", method=RequestMethod.GET)
	public String blacklist(Model model) throws Exception{
		List<BlackListBean> list;
		list = service.blacklist();
		model.addAttribute("list", list);
		return "blacklist";
	}
	
}

