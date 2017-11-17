package com.crc.legacymvc;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String redirect(){
		
		//return "redirect:/static/site_pro/index.html";
		return "index";
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public void login(HttpSession session){
		
	}
	
	@RequestMapping(value = "/login_success", method=RequestMethod.GET)
	public String login_success(HttpSession session) {
		return "inputtest";
	}
	
	@RequestMapping(value = "/login_duplicate", method=RequestMethod.GET)
	public void login_duplicate() {
		
	}
	
}
