package project.spring.groupware.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import project.spring.groupware.member.domain.MemberVO;
import project.spring.groupware.member.service.MemberService;

@RestController
@RequestMapping(value="/join")
public class MemberRestController {
	private static final Logger logger = LoggerFactory.getLogger(MemberRestController.class);
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(method=RequestMethod.POST)
	public ResponseEntity<String> createReply(@RequestBody MemberVO vo){
		//ResponseEntity<> 클래스:
		//응답과 함께 HTTP 결과 코드도 지정해서 보내줄 수 있는 클래스
		//@Requestbody:
		//요청 본체 안에 포함된 JSON 객체를
		//선언된 클래스 타입으로 변환하겠다는 어노테이션
		logger.info("컨트롤러 불림");
		
		ResponseEntity<String> entity = null;
		int result = service.insertMember(vo);
		if(result == 1){
			entity = new ResponseEntity<String>("OK", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("NOK", HttpStatus.BAD_REQUEST);
		}
		
		logger.info("결과값"+result);
		logger.info("엔티티"+entity);
		return entity;
	}
	
	@RequestMapping(value="update_member_info", method=RequestMethod.PUT)
	public ResponseEntity<String> updateMemInfo(@RequestBody MemberVO vo){
		logger.info("업데이트 콘트롤러");
		
		ResponseEntity<String> entity = null;
		
		int result = service.updateMemberInfo(vo);
		
		if(result == 1){
			entity = new ResponseEntity<String>("OK", HttpStatus.OK);
		}else{
			entity = new ResponseEntity<String>("NOK", HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
