package project.spring.groupware.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/draft")
public class Electronic_Approval_Controller {
	private static final Logger logger =
			LoggerFactory.getLogger(Electronic_Approval_Controller.class);
	
	@RequestMapping(value="/draft-myApproval", method=RequestMethod.GET)
	public void approval(){
		logger.info("approval called");
	}
	
	
}
