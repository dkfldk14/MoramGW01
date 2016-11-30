package project.spring.groupware.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.spring.groupware.member.service.MemberService;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	MemberService service;
	
	@RequestMapping(value="main", method=RequestMethod.POST)
	public String mainConnect(String user, Model model){
		
		model.addAttribute("id", user);
		logger.info("이름 불러오기");
		String name = service.selectName(user);
		
		model.addAttribute("name", name);
		logger.info(name);
		
		return "home";
	}

}
