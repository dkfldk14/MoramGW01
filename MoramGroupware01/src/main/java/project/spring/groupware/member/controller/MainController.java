package project.spring.groupware.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jws.WebParam.Mode;
import javax.mail.Session;
import javax.servlet.ServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.spring.groupware.member.domain.MemberVO;
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
		MemberVO vo = service.selectName(user);
		
		String name = vo.getName();
		model.addAttribute("name", name);
		logger.info(name);
		
		String usertype = vo.getUsertype();
		model.addAttribute("type", usertype);
		
		return "home";
	}
	//로그인이 되어있는 상태에서는 로그인 페이지가 접속 불가능하도록 메인 화면으로 연결
	//세션에 로그인 값이 저장되어있으면 이 컨트롤러를 실행하고
	//세션에 값이 없을경우 위의 컨트롤러로 연결
	@RequestMapping(value="main1", method=RequestMethod.GET)
	public String mainConnect(Model model, HttpServletRequest request){
		
		HttpSession session = request.getSession();
		
		Object obj = session.getAttribute("login_id");
		model.addAttribute("id", obj.toString());
		logger.info("이름 불러오기");
		
		MemberVO vo = service.selectName(obj.toString());
		
		String name = vo.getName();
		
		model.addAttribute("name", name);
		logger.info(name);
		
		model.addAttribute("type", vo.getUsertype());
		
		return "home";
	}
	
	@RequestMapping(value="member_manage")
	public String member_manage(Model model){
		logger.info("member_manage 가 불려야해");
		
		List<MemberVO> list = service.manageMember();
		
		model.addAttribute("member_list", list);
		
		return "/admin/member_manage";
	}
	
	@RequestMapping(value="admin_update_member", method=RequestMethod.POST)
	public void updateAdminmem(HttpServletResponse response, String id, String dept, String usertype) throws IOException{
		logger.info("업데이트 불림");
		
		int result = service.adminUudateMem(id, dept, usertype);
		PrintWriter out = response.getWriter();
		
		logger.info("결과"+result);
		if(result == 1){
			out.print("OK");
		}else{
			out.print("NOK");
		}
		
	}
	
	@RequestMapping(value="admin_member_detail")
	public String detail(String userid, Model model){
		logger.info("디테일"+userid);
		
		MemberVO vo = service.selectAdminMem(userid);
		model.addAttribute("MemberVO", vo);
		return "admin/admin_member_detail";
	}
	
	

}