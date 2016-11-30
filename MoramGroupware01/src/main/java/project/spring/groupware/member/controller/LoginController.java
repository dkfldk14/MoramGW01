package project.spring.groupware.member.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.persistence.MemberDAOImple;
import project.spring.groupware.member.service.MemberService;

@Controller
@RequestMapping(value="/member_login")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private JavaMailSender mailsender;
	
	private String from = "mutd2010@nate.com";
	private String subject = "모람 인증 메일입니다.";
	
	@RequestMapping(value="login")
	public void login(){
		
	}
	
	@RequestMapping(value="join")
	public void join(){
		
	}
	
	@RequestMapping(value="checkid", method=RequestMethod.POST)
	public void check(HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.setCharacterEncoding("utf-8");
		
		String userid = request.getParameter("userid");
		
		PrintWriter out = response.getWriter();
		
		String id = service.checkId(userid);
		if(userid.equals(id)){//사용중인 아이디
			out.print("NOK");
		}else{//없는 아이디
			out.print("OK");
		}
	}
	
	@RequestMapping(value="email", method=RequestMethod.GET)
	public void email(String email, HttpServletResponse response) throws IOException{
		logger.info("불림"+email);
		PrintWriter out = response.getWriter();
		String authkey = String.valueOf(((int)(Math.random()*10000)+14231));
		
		try {
			MimeMessage message = mailsender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setTo(email);
			messageHelper.setText(authkey);
			messageHelper.setFrom(from);
			messageHelper.setSubject(subject);	// 메일제목은 생략이 가능하다
			
			mailsender.send(message);
			logger.info(authkey);
			out.print(authkey);
			
		} catch(Exception e){
			System.out.println(e);
			out.print("NOK");
		}
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String memberJoin(){
		logger.info("회원가입");
		return "redirect:/member_login/login";
	}
	
	@RequestMapping(value="/login_check", method=RequestMethod.POST)
	public void loginCheck(HttpServletResponse response, String userid, String password) throws IOException{
		logger.info("아이디:"+userid);
		logger.info("비번:"+password);
		
		LoginVO vo = service.loginCheck(userid);
		PrintWriter out = response.getWriter();
		
		/*logger.info("아이디는:"+vo.getId());
		logger.info("비밀번호"+vo.getPwd());*/
		
		if(vo==null){
			out.print("1");
		}else{
			logger.info("왜 안찍혀");
			if(password.equals(vo.getPwd())){
				out.print("OK");
			}else{
				out.print("NOK");
			}
		}
	}
}
