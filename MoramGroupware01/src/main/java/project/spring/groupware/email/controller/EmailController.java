package project.spring.groupware.email.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.Spliterators;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.mail.handlers.message_rfc822;

import project.spring.groupware.email.domain.EmailVO;
import project.spring.groupware.email.pageutil.NewPaginationCriteria;
import project.spring.groupware.email.pageutil.PageMaker;
import project.spring.groupware.email.pageutil.PaginationCriteria;
import project.spring.groupware.email.service.emailServiceDAO;
import project.spring.groupware.member.domain.MemberVO;


@Controller
@RequestMapping(value="/email")
public class EmailController {
	
	
	
	
	@Autowired
	private emailServiceDAO emailServiceDAO;
	List<EmailVO> emaillist=null;
	
//	private EmailVO =new EmailVO();

	private static final Logger logger = LoggerFactory.getLogger(EmailController.class);
	
	private final String HOST="192.168.11.100";
	private final String mailStoreType="pop3";
	private final String Pwd="6557";
	private String gwEmail=null;
	private Message[] messages;	
	private int sendmailct=200;
	
	@RequestMapping(value="/list")
	public void EmailList(Integer page,Model model,HttpServletRequest request){
		HttpSession session=request.getSession();
		String userid=(String) session.getAttribute("login_id");
		model.addAttribute("userid", userid);
		logger.info("userid"+userid);
		MemberVO mvo=emailServiceDAO.member_one(userid);
		gwEmail=mvo.getGroupemail();
		logger.info("gwEmail :  "+gwEmail);
		
		emaillist = new ArrayList<EmailVO>();
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
		
		logger.info("count : "+emailFolder.getMessageCount());
		
		messages=emailFolder.getMessages();
		/*
		PaginationCriteria c = new PaginationCriteria();
		
		int paging = page;
		
		logger.info("paging : "+paging);
		int start = c.getStart() + 10 * paging -1;
		System.out.println("엔드엔드"+c.getEnd());
		int end = c.getEnd() + 10 * paging -1;
		
		System.out.println("페이징 넘버 " + paging);
		//전체카운트 start/end 정하고
		int perPage=10;
		
	
		//emailFolder.getMessages(start, end);
		
		
		
		if (messages.length<=end){
			end = messages.length;
		}
		*/
		
		int start = 10 * (page - 1);
		int end = start + 10;
		if (end > messages.length) {
			end = messages.length;
		}
		
//		for (int i = start; i < end; i++) {
//			EmailVO vo = new EmailVO();
//			Message message = messages[i];
//			vo.setNum(message.getMessageNumber());
//			Date date = message.getSentDate();
//			SimpleDateFormat df = new SimpleDateFormat("yy/MM/dd hh:mm");
//			vo.setSenddate(df.format(date).toString());
//			vo.setSubject(message.getSubject().toString());
//			vo.setContent(message.getContent().toString());
//			vo.setFrom_email(message.getFrom()[0].toString());
//			emaillist.add(vo);
//			
//		}
		
		for (int i = end; i > start; i--) {
			EmailVO vo = new EmailVO();
			Message message = messages[i-1];
			vo.setNum(message.getMessageNumber());
			Date date = message.getSentDate();
			SimpleDateFormat df = new SimpleDateFormat("yy/MM/dd hh:mm");
			vo.setSenddate(df.format(date).toString());
			vo.setSubject(message.getSubject().toString());
			vo.setContent(message.getContent().toString());
			vo.setFrom_email(message.getFrom()[0].toString());
			emaillist.add(vo);
			
		}
		
		/*
		for (int i = end, n = start; i >= n; i--) {
			EmailVO vo = new EmailVO();
			
			Message message = messages[i];
			
			System.out.println("---------------------------------");
			System.out.println("message number:" + message.getMessageNumber());
			System.out.println("Date:" + message.getSentDate());
			System.out.println("Subject: " + message.getSubject());
			System.out.println("From: " + message.getFrom()[0]);
			System.out.println("Text: " + message.getContent().toString());
			System.out.println("rpto : "+message.getReplyTo()[0]);
			vo.setNum(message.getMessageNumber());
			Date date = message.getSentDate();
			SimpleDateFormat df = new SimpleDateFormat("yy/MM/dd hh:mm");
			vo.setSenddate(df.format(date).toString());
			vo.setSubject(message.getSubject().toString());
			vo.setContent(message.getContent().toString());
			vo.setFrom_email(message.getFrom()[0].toString());

		
			if (i <= start) {
				i = n;
			}
			emaillist.add(vo);
			
			
		
		}
		*/
		System.out.println("/////////////////////////////");
		model.addAttribute("email", emaillist);
		if(messages.length==0){
			model.addAttribute("messages",0);
//			
		}
		
		
		model.addAttribute("messages",messages.length);
//		c.setPage(page);
		
		
		PaginationCriteria c = new PaginationCriteria(page, 10);
		PageMaker maker = new PageMaker();
		maker.setCriteria(c);
		maker.setTotalCount(messages.length);
		maker.setPageDate();
		model.addAttribute("pageMaker", maker);
			
		
		System.out.println(page + " + " + maker.getTotalCount() + " + " + emaillist.size());
		
		System.out.println(maker.getNumOfPageLink());
		System.out.println("start = " +maker.getStartPageNum());
		System.out.println("end = "+maker.getEndPageNum());
		

		emailFolder.close(false);
		store.close();

	} catch (NoSuchProviderException e) {
		e.printStackTrace();
	} catch (MessagingException e) {
		e.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	}
}
	
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void emailview(int num, @ModelAttribute("page") int page, Model model, EmailVO vo) {
		logger.info("detail jsp 실행 ");
		// model.addAttribute("email", vo);
		// 아마 디테일을 누를때 전체 리스트를 받아오면 되지 않을까 싶어요! >ㅇ<
		/*EmailVO vo = emaillist.get(num - 1);
		logger.info("detail에 있는 vo 값 : " + vo.getContent());
		logger.info("num:" + vo.getNum());*/
		logger.info("num : "+num);
		logger.info("page : "+page);
		/*int emailNum=num-(page-1) * 10;
		EmailVO vo1=emaillist.get(emailNum-1);
		*/
		//int emailNum=num-(page-1) * 10;
		//EmailVO vo1=emaillist.get(emailNum-1);
		EmailVO detail=emailServiceDAO.detailEmail(num);
		
		//EmailVO vo1=emaillist.get(num);
		model.addAttribute("emaildetail", detail);
		//vo = emailServiceDAO.detailEmail(vo1.getNum());	
		//logger.info("detail subject : " + vo.getSubject());
		//model.addAttribute("emaildetail", vo);
	}
	
	@RequestMapping(value = "/detail-receive", method = RequestMethod.GET)
	public void detail(int num, int page, Model model, EmailVO vo) {
		logger.info("detail jsp 실행 ");
		logger.info("num" + num);
		logger.info("어려운 공식: " + (messages.length - (page-1)*10 + num));
		
		EmailVO volist=emaillist.get(messages.length - num);
			model.addAttribute("emaildetail", volist);
			
/*		// model.addAttribute("email", vo);
		EmailVO vo = emaillist.get(num - 1);
		logger.info("detail에 있는 vo 값 : " + vo.getContent());
		logger.info("num:" + vo.getNum());
		logger.info("num : "+num);
		logger.info("page : "+page);
		int emailNum=num-(page-1) * 10;
		EmailVO vo1=emaillist.get(emailNum-1);
		
		EmailVO vo1=emaillist.get(num);
	//	int emailNum=num-(page-1) * 10;
		//EmailVO vo1=emaillist.get(emailNum-1);
		model.addAttribute("emaildetail", vo1);
		vo = emailServiceDAO.detailEmail(vo1.getNum());	
		logger.info("detail subject : " + vo.getSubject());
		//model.addAttribute("emaildetail", vo);
	*/}


	
	@RequestMapping(value = "/detail-other", method = RequestMethod.GET)
	public void detailother(int num, int page, Model model, EmailVO vo) {
		logger.info("detail jsp 실행 ");
		logger.info("num" + num);
		EmailVO volist=emailServiceDAO.detailEmail(num);
		
		model.addAttribute("emaildetail", volist);
			
	
	}

	
	
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void emailwrite(Model model,HttpServletRequest request,@ModelAttribute("to_email")String to_email){
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("login_id");
		MemberVO vo = emailServiceDAO.member_one(userid);
	
		String name=vo.getName();
		String gwemail=vo.getGroupemail();
		model.addAttribute("name", name);
		model.addAttribute("gwemail", gwemail);
		List<MemberVO> memberList=emailServiceDAO.member_adress();
		logger.info("size MemberList:" +memberList.size());
		model.addAttribute("memberList", memberList);
		
		//int result=emailServiceDAO.insert(vo);
		
	}
	
	@RequestMapping(value="write", method=RequestMethod.POST)
	public void emailforward(Model model,HttpServletRequest request,EmailVO vo){
		
	
		
	}
	
	
	@RequestMapping(value="/listup", method=RequestMethod.GET)
	public String emailwrite(int num, RedirectAttributes attr){
			int result=num+1;
			EmailVO vo=emaillist.get(result);
			logger.info("num 값 : "+vo.getNum());
		attr.addFlashAttribute("emaillist", vo);
		return "redirect:email/detail";

	}
	
	
	@RequestMapping(value="/list", method=RequestMethod.POST)
	
	public void testCheck(@RequestParam(value = "valueArrTest[]") List<Integer> valueArrTest, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		String id = (String)session.getAttribute("login_id");
		MemberVO vo = emailServiceDAO.member_one(id);
		gwEmail = vo.getGroupemail().toString();
		logger.info("testCheck() ...");
		logger.info("arr size: " + valueArrTest.size());
//		for (int i = 0; i < valueArrTest.size(); i++) {
		/*	int num=Integer.parseInt(valueArrTest.get(i).toString());
			System.out.println("num : "+num);
		*/
			
			
			delete(valueArrTest,model,gwEmail);
			
//		}
	
	/*	response.setHeader("Refresh", "0; URL=list.jsp");

		return;
*/			
			
		PrintWriter out=response.getWriter();
		out.print("OK");
	}
	
	private void delete(List<Integer> valueArrTest,Model model,String gwEmail) {
		
		String host = "192.168.11.100";// change accordingly
			String mailStoreType = "pop3";
			//String user = "dkfldk14@moram.com";// change accordingly
			//String password = "dkfldk14";
			try {
				// get the session object
				Properties properties = new Properties();
				properties.put("mail.store.protocol", "pop3");
				properties.put("mail.pop3s.host", host);
				properties.put("mail.pop3s.port", "110");
				properties.put("mail.pop3.starttls.enable", "true");
				Session emailSession = Session.getDefaultInstance(properties);
				// emailSession.setDebug(true);

				// create the POP3 store object and connect with the pop server
				Store store = emailSession.getStore("pop3");

				store.connect(host, gwEmail, Pwd);

				// create the folder object and open it
				Folder emailFolder = store.getFolder("INBOX");
				emailFolder.open(Folder.READ_WRITE);
				
				// retrieve the messages from the folder in an array and print it
				Message[] messages1 = emailFolder.getMessages();
				/*Message messages=messages1[Integer.parseInt(valueArrTest.get(0).toString())];
				*/
				
				
				
				//Message message=emailFolder.getMessage(1);
				//System.out.println("getMessages : "+message.getSubject());
				
			/*	System.out.println("valueArrTest :"+valueArrTest.size());
				
					Message messages=emailFolder.getMessage(Integer.parseInt(valueArrTest.get(0).toString()));
				System.out.println("getform : "+messages.getFrom());
				System.out.println("getMessages : "+messages.getSubject());
				// delete
				System.out.println();
				*/
				
				for (int i = 0; i < valueArrTest.size(); i++) {
			     Message message1=emailFolder.getMessage(Integer.parseInt(valueArrTest.get(i).toString()));
					
	
					System.out.println("---------------------------------");
					System.out.println("Email Number " + (i));
					System.out.println("Subject: " + message1.getSubject());
					EmailVO vo=new EmailVO();
					vo.setNum(message1.getMessageNumber());
					vo.setFrom_email(message1.getFrom()[i].toString());
					
					vo.setSubject(message1.getSubject());
					Date date=message1.getSentDate();
					SimpleDateFormat df=new SimpleDateFormat("yy/MM/dd hh:mm");
					vo.setSenddate(df.format(date).toString());
					vo.setContent(message1.getContent().toString());
					vo.setState(2);
					vo.setTo_email(gwEmail);
					emailServiceDAO.insert(vo);
				/*	emailServiceDAO.delete_emailList(gwMail);*/
						// set the DELETE flag to true
					message1.setFlag(Flags.Flag.DELETED, true);
					logger.info("끝!");
				}
				
				
				// expunges the folder to remove messages which are marked deleted
				emailFolder.close(true);
				store.close();

			} catch (NoSuchProviderException e) {
				e.printStackTrace();
			} catch (MessagingException e) {
				e.printStackTrace();
			}catch (Exception e) {
				e.printStackTrace();
			}


		}

		
	
	@RequestMapping(value="/email-doing",method=RequestMethod.POST)
	public void emailDoing(EmailVO vo){
		/*String subject=vo.getSubject();
		String to_mail=vo.getTo_email();
		String from_mail=vo.getFrom_email();
		String content=vo.getContent();
		강호준<jun@moram.com>, 방수용<qkdtyd12@moram.com>, 조승현<seunghyun123@moram.com>, 김성준<sjkim123@moram.com>, */
		
		
	
		sendEmail(vo);
	   
	   
		
	}
	
	
	private void sendEmail(EmailVO vo){
		
		String[] address=new String[10];
		
		String addressList=vo.getTo_email();
		
		Matcher matcher = Pattern.compile("<[^>]+>").matcher(addressList);
		int i = 0;
		while( matcher.find() ) {
				
				String group = matcher.group();
				address[i] = group.substring(1, group.length()-1);
					logger.info(group.substring(1, group.length()-1));
					logger.info("주소분리 ? : "+address[i]);
					
					i++;
				
			}
	

			
		
		
		
		/*String to=vo.getTo_email();
		logger.info("to : "+to);
		*/
		String from=vo.getFrom_email();
		logger.info("from : "+from);
		
		/*final String username="dkfldk14@moram.com";
		*/ String password="6557";
		
		
		String host="192.168.11.100";
		
		 Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "25");
				
	     
	      /*Session*/
		for (int z = 0; z < address.length; z++) {
			if(address[z]!=null){
			// Get the Session object.
			Session session = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(vo.getFrom_email(), password);
				}
			});

	      try {
	    	  
	    	
	    	  
	    		  
	    		  logger.info("address 배열 : "+address[z]);
	    		    
		   // Create a default MimeMessage object.
		   Message message = new MimeMessage(session);
		
		   // Set From: header field of the header.
		   message.setFrom(new InternetAddress(from));
		
		   // Set To: header field of the header.
		   message.setRecipients(Message.RecipientType.TO,
	               InternetAddress.parse(address[z]));
		
		   // Set Subject: header field
		   message.setSubject(vo.getSubject());
		
		   // Now set the actual message
		   message.setText(vo.getContent());

		   // Send message
		   Transport.send(message);
		   sendmailct = emailServiceDAO.select_mail_num();
		   sendmailct+=1;
			EmailVO emailvo=new EmailVO(sendmailct, vo.getSubject(), null, vo.getFrom_email(), vo.getContent(), address[z], null, 1);
			emailServiceDAO.insert(emailvo);
			logger.info("vo 값 : "+vo.getSubject() );
			logger.info("vo값 : "+vo.getFrom_email());
			logger.info("vo값 : "+address[z]);
		
		   
	    	 
		   System.out.println("Sent message successfully....");
	    	  
		   
	      } catch (MessagingException e) {
	         throw new RuntimeException(e);
	      }
			}
	      logger.info("됏음?");
	      
	   }
	}

	@RequestMapping(value="/test")
	public void test(){
		
	}

	@RequestMapping(value="/send-mailbox", method=RequestMethod.GET)
	public void send_mailbox(Integer page, Model model, HttpServletRequest request){
		//todo- session 아이디 가져와서 하기 
		
		HttpSession session=request.getSession();
		String userid=(String) session.getAttribute("login_id");
		MemberVO mvo=emailServiceDAO.member_one(userid);
		logger.info("이메일:"+mvo.getGroupemail());
		String from_email = mvo.getGroupemail();
		
		
		NewPaginationCriteria c2 = new NewPaginationCriteria();
		
		/*String gwMail="dkfldk14@moram.com";*/
		//   PaginationCriteria c = new PaginationCriteria();
		   if(page!=null){
			  // c.setPage(page);
			   //1페이지면 1부터 5까지
			   //2페이지면 6부터 10까지..  해당 호출된 페이지를 설정해줌.
			   c2.setPage(page);
		   }
		   logger.info("send-mail listpage (): page="+page);
		
		  // logger.info("메일가져온거 맞냐.. : "+mvo.getGroupemail());
		//List<EmailVO> vo=emailServiceDAO.send_emailList(mvo.getGroupemail());
		//String from_email=mvo.getGroupemail();
		//넣어주는거 ㅇ-

		
		//내가 만든 것
	   c2.setFrom_email(from_email);
	   logger.info("from_email : " + c2.getFrom_email());
		List<EmailVO> emailList = emailServiceDAO.addressList(c2);
		for(EmailVO vo : emailList){
			logger.info("EmailAddress : " + vo.getFrom_email());
		}
		model.addAttribute("emailList", emailList);
		
		//여기서 잠시 지움 복구
		/*List<EmailVO> vo1=emailServiceDAO.adressList(1, c, mvo.getGroupemail());
		model.addAttribute("sendCount", vo.size());
		model.addAttribute("email", vo1);*/
		
	 	
	   	//페이지메이커 
	   	PageMaker maker=new PageMaker();
	   	//▼ 몇번째 페이지를 보여줄것인지 조건
	   //	maker.setCriteria(c);
	   	c2.setFrom_email(mvo.getGroupemail());
	   	maker.setCriteria2(c2);
	   	//▼ 전체 총 페이지를 검색해준다. result 타입은 int로 했었..다는
	   	//maker.setTotalCount(emailServiceDAO.totalEmailct("1", mvo.getGroupemail()));
	   logger.info("send-mail totalCount : " + emailServiceDAO.totalCount(c2));
	   	maker.setTotalCount(emailServiceDAO.totalCount(c2));
	   	//▼ pageMaker 의 함수를 호출
	   //	maker.setPageDate();
	   	maker.setNewPageDate();
	   	
	   	
	   	
	   	//모델객체에 pageMaker 넘겨줌. 
	   	model.addAttribute("pageMaker", maker);
	   	model.addAttribute("Gemail", mvo.getGroupemail());
	
	
	}
	
	
	
	@RequestMapping(value="/delete-mailbox",method=RequestMethod.GET)
	public void delete_mailbox(Integer page,Model model, HttpServletRequest request){
		//todo- session 아이디 가져와서 하기 
		
		
		HttpSession session=request.getSession();
		String userid=(String) session.getAttribute("login_id");
		MemberVO mvo=emailServiceDAO.member_one(userid);
		logger.info("이메일:"+mvo.getGroupemail());
		
		/*String gwMail="dkfldk14@moram.com";*/
		logger.info("listpage (): page="+page);
		   PaginationCriteria c=new PaginationCriteria();
		   if(page!=null){
			   c.setPage(page);
			   //1페이지면 1부터 5까지
			   //2페이지면 6부터 10까지..  해당 호출된 페이지를 설정해줌. 
		   }
		
		List<EmailVO> vo=emailServiceDAO.delete_emailList(mvo.getGroupemail());
		String from_email=mvo.getGroupemail();
		//넣어주는거 ㅇ-
		List<EmailVO> vo1=emailServiceDAO.adressList(2, c, mvo.getGroupemail());
		model.addAttribute("sendCount", vo.size());
		model.addAttribute("email", vo1);
		
	 	
	   	//페이지메이커 
	   	PageMaker maker=new PageMaker();
	   	//▼ 몇번째 페이지를 보여줄것인지 조건
	   	maker.setCriteria(c);
	   	//▼ 전체 총 페이지를 검색해준다. result 타입은 int로 했었..다는
	   	maker.setTotalCount(emailServiceDAO.totalEmailct("2", mvo.getGroupemail()));
	   	//▼ pageMaker 의 함수를 호출
	   	maker.setPageDate();
	   	//모델객체에 pageMaker 넘겨줌. 
	   	model.addAttribute("pageMaker", maker);
	   	model.addAttribute("Gemail", mvo.getGroupemail());
	}
	
	
	@RequestMapping(value="/delete-mailbox", method=RequestMethod.POST)
	
	public void deleteMail(@RequestParam(value = "valueArrTest[]") List<Integer> valueArrTest, Model model, HttpServletResponse response) throws IOException{
				
		logger.info("=== length: " + valueArrTest.size());
		
		/*int result=emailServiceDAO.delete_change(num);
			*/
			for(int i=0; i<valueArrTest.size(); i++){
				logger.info("=== value: " + valueArrTest.get(i));
				int result=emailServiceDAO.delete_change(Integer.valueOf(valueArrTest.get(i)));
				logger.info("i 값 : "+result);
				
			}
			PrintWriter out = response.getWriter();
			out.print("OK");
	
	
}
}
