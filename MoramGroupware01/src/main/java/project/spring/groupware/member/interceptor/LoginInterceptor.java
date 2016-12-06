package project.spring.groupware.member.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	private static final String SESSION_ATTR_ID = "login_id";
	
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		logger.info("preHandle() 호출 ...");
		
		// 세션에 기존 로그인 정보가 남아 있으면 삭제, 그렇지 않으면 그냥 리턴
		// 세션 객체를 얻어옴
		HttpSession session = request.getSession();
		Object id = session.getAttribute(SESSION_ATTR_ID);
		if (id != null) { // 세션에 기존 정보가 남아 있는 경우
			session.removeAttribute(SESSION_ATTR_ID);
			session.removeAttribute("usertype");
			session.removeAttribute("name");
			logger.info("기존 로그인 정보 삭제됨");
		} else { // 세션에 로그인 정보가 없는 경우
			logger.info("기존 로그인 정보 없음");
		}
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler,
			ModelAndView mav) throws Exception {
		logger.info("postHandle() 호출 ...");
		//로그인 정보를 세션에 저장하기 위해서
		HttpSession session = request.getSession();
		
		
		
		// 콘트롤러에서 MemberVO 타입을 전달했기 때문에
		// ModelAndView에서 꺼낸 attribute를 MemberVO로 형변환(casting)
		String id = (String) mav.getModel().get("id");
		String type = (String) mav.getModel().get("type");
		String name = (String) mav.getModel().get("name");
		logger.info("아이디:"+id);
		if(id != null){ //DB에 일치하는 id/pw 정보와 일치
			logger.info("새로운 로그인 성공");
			session.setAttribute(SESSION_ATTR_ID, id);
			session.setAttribute("usertype", type);
			session.setAttribute("name", name);
		}
	} // end postHandle()
}
