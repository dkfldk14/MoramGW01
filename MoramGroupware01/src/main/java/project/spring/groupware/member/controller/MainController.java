package project.spring.groupware.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.jws.WebParam.Mode;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.servlet.ServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import project.spring.groupware.board.service.BoardService;
import project.spring.groupware.draft.persistence.approvalDAO;
import project.spring.groupware.email.domain.EmailVO;
import project.spring.groupware.email.pageutil.PageMaker;
import project.spring.groupware.email.pageutil.PaginationCriteria;
import project.spring.groupware.email.service.emailServiceDAO;
import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;
import project.spring.groupware.member.service.MemberService;
import project.spring.groupware.mypage.domain.MyPageBoardVO;
import project.spring.groupware.mypage.service.MypageBoardService;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	MemberService service;
	
	@Autowired
	private MypageBoardService mypageBoardService;
	
	@Autowired
	BoardService boardservice;

	@Autowired
	approvalDAO dao;
	
	@Autowired
	private emailServiceDAO emailServiceDAO;
	
	@RequestMapping(value="main", method=RequestMethod.POST)
	public String mainConnect(String user, Model model){
		
		model.addAttribute("id", user);
		logger.info("이름 불러오기");
		MemberVO vo = service.selectName(user);
		
		String name = vo.getName();
		model.addAttribute("name", name);
		logger.info(name);
		
		int count = boardservice.infoCount();
		//각 조별 게시판으로 들어가도록 dept을 받아옴
		String dept = vo.getDept();
		model.addAttribute("dept", dept);
		
		int noUser = service.adminUsertypeMem();
		model.addAttribute("noUser", noUser);
		
		int count_ap = dao.count_approval(user);
		model.addAttribute("count_ap", count_ap);
		
		 int count_fin = dao.count_finish(user);
	      model.addAttribute("count_fin", count_fin);
		
		String usertype = vo.getUsertype();
		logger.info("MainController usertype : " + usertype);
		model.addAttribute("type", usertype);
		model.addAttribute("count", count);
		//프로필 이미지 가지고 오기
		String profileimage=vo.getProfileimage();
		model.addAttribute("profileimage", profileimage);
		
		
		int countEmail=sendCount(user);
		model.addAttribute("emailCount",countEmail);
		
		return "home";
	}
	
	
	
	
		private int sendCount(String user){
			
			//host/user
			
			int countNewMail=0;		
			MemberVO mvo=emailServiceDAO.member_one(user);
			String gwEmail=mvo.getGroupemail();
			final String HOST="192.168.11.100";
			final String mailStoreType="pop3";
			final String Pwd="6557";
			
		try {
			logger.info("try 시작");
			
			// create properties field
			Properties properties = new Properties();
			properties.put("mail.pop3.host", HOST);
			properties.put("mail.pop3.port", "110");
			properties.put("mail.pop3.starttls.enable", "true");
			Session emailSession = Session.getDefaultInstance(properties);
			Store store = emailSession.getStore(mailStoreType);
			store.connect(HOST, gwEmail, Pwd);
			logger.info("진짜연결.");
			// create the folder object and open it
		      Folder emailFolder = store.getFolder("INBOX");
		      emailFolder.open(Folder.READ_ONLY);
		    
		      // retrieve the messages from the folder in an array and print it
		      Message[] messages = emailFolder.getMessages();
		     // int count=emailFolder.getNewMessageCount();
		   
		      System.out.println("messages.length---" + messages.length);
		 			      for (int i = 0, n = messages.length; i < n; i++) {
		         Message message = messages[i];
		         System.out.println("Email Number " + (i + 1));
		         System.out.println("Date:"+message.getSentDate());
		         
		         Date date = message.getSentDate();
					SimpleDateFormat df = new SimpleDateFormat("yy/MM/dd hh:mm");
					SimpleDateFormat df1= new SimpleDateFormat("yy/MM/dd");
						Date currentTime=new Date();
						String date1=df1.format(currentTime);
						String mailDate=df1.format(date).toString();
						
						if(date1.equals(mailDate)){
							countNewMail++;
						}
		        
		         
		      //   System.out.println("date : "+message.getDataHandler());
		      }
		    // System.out.println(count);
		      //close the store and folder objects
		      emailFolder.close(false);
		      store.close();

		      } catch (NoSuchProviderException e) {
		         e.printStackTrace();
		      } catch (MessagingException e) {
		         e.printStackTrace();
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		   
	
		
			
			return countNewMail;
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
		
		int count = boardservice.infoCount();
		
		String name = vo.getName();
		
		model.addAttribute("name", name);
		logger.info(name);
				
		int noUser = service.adminUsertypeMem();
		model.addAttribute("noUser", noUser);
		
		int count_ap = dao.count_approval(obj.toString());
		model.addAttribute("count_ap", count_ap);
		logger.info("감자는 묵어봤나"+count_ap);
		
		 int count_fin = dao.count_finish(obj.toString());
	      model.addAttribute("count_fin", count_fin);
		
		//각 조별 게시판으로 들어가도록 dept을 받아옴
		String dept = vo.getDept();
		model.addAttribute("dept", dept);
		logger.info("dept : " + dept);
		
		String usertype = vo.getUsertype();
		logger.info("MainController 1 usertype : " + usertype);
		model.addAttribute("type", usertype);
		
		//프로필 이미지 가지고 오기
		String profileimage=vo.getProfileimage();
		model.addAttribute("profileimage", profileimage);
		
		model.addAttribute("count", count);
	
		int countEmail=sendCount(obj.toString());
		model.addAttribute("emailCount",countEmail);
		
		
		return "home";
	}
	
	@RequestMapping(value="member_manage")
	public String member_manage(Model model){
		logger.info("member_manage 가 불려야해");
		
		List<MemberVO> list = service.manageMember();
		int all = service.adminAllmem();
		int noUser = service.adminUsertypeMem();
		
		model.addAttribute("member_list", list);
		model.addAttribute("all", all);
		model.addAttribute("noUser", noUser);
		
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
	
	@RequestMapping(value="member_update")
	public String memberUpdate(){
		logger.info("개인정보수정");
		
		return "/mypage/member_update";
	}
	
	@RequestMapping(value="update_Authpwd", method=RequestMethod.POST)
	public void updateAuthpwd(String password, HttpServletRequest request, HttpServletResponse response) throws IOException{
		logger.info("비번확인 불림"+password);
		
		HttpSession session = request.getSession();
		String userid = String.valueOf(session.getAttribute("login_id"));
		
		LoginVO vo = service.loginCheck(userid);
		
		PrintWriter out = response.getWriter();
		
		if(password.equals(vo.getPwd())){
			out.print("OK");
		}else{
			out.print("NOK");
		}
	}
	
	@RequestMapping(value="member_update_detail")
	public String memberUpdatedetail(HttpServletRequest request, HttpServletResponse response, Model model){
		
		HttpSession session = request.getSession();
		String userid = String.valueOf(session.getAttribute("login_id"));
		
		MemberVO vo = service.selectAdminMem(userid);
		model.addAttribute("MemberVO", vo);
		
		return "/mypage/detail";
	}
	
	
/*	@RequestMapping(value="my_page", method =RequestMethod.GET)
	public void mypagelist(HttpServletRequest request, Model model){
		
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("login_id");
		
		logger.info("mypage userid : " +userid);
		
		List<MyPageBoardVO> list = mypageBoardService.mypagelist(userid);
		for(MyPageBoardVO vo : list){		
			logger.info("mypage vo userid : " + vo.getUserid());
		}
		
		model.addAttribute("mypage", list);
		
		
	}*/
	

}
