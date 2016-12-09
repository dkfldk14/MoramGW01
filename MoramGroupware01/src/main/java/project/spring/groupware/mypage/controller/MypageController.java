package project.spring.groupware.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import project.spring.groupware.mypage.domain.MyPageBoardVO;
import project.spring.groupware.mypage.pageutil.PageMaker;
import project.spring.groupware.mypage.pageutil.PaginationCriteria_userid;
import project.spring.groupware.mypage.service.MypageBoardService;

@Controller
@RequestMapping(value = "mypage")
public class MypageController {
	private static final Logger logger =
			LoggerFactory.getLogger(MypageController.class);
	
	@Autowired
	private MypageBoardService mypageBoardService;
	
	@RequestMapping(value = "my_page", method = RequestMethod.GET)
	public void mypagelist(HttpServletRequest request,Integer page, Model model){
		
		PaginationCriteria_userid c = new PaginationCriteria_userid();
		
		logger.info("parameter page : " + page);
		
		if(page != null){
			c.setPage(page);
			logger.info("inner page : " + c.getPage());
		}
		
		logger.info("page : " + c.getPage());
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("login_id");
		
		logger.info("mypage userid : " +userid);
		
		List<MyPageBoardVO> list = mypageBoardService.mypagelist(userid);
		for(MyPageBoardVO vo : list){		
			logger.info("mypage code : " + vo.getCode());
			model.addAttribute("code", vo.getCode());
		}
		
		model.addAttribute("useridList", list);
		
		c.setUserid(userid);
		List<MyPageBoardVO> listPaging = mypageBoardService.mypagelistPaging(c);
		model.addAttribute("useridList1", listPaging);
		
		for(MyPageBoardVO vo2 : listPaging){
			logger.info("mypage code : " + vo2.getCode());
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria_userid(c);
		pageMaker.setTotalCount(mypageBoardService.totalCount(userid));
		pageMaker.setMyPageDate();
		
		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	
}
