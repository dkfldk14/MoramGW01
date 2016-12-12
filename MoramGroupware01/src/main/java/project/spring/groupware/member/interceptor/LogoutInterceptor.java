package project.spring.groupware.member.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LogoutInterceptor extends HandlerInterceptorAdapter{
	
	private static final Logger logger = LoggerFactory.getLogger(LogoutInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("Logout preHandle() 호출 ...");
		
		// 세션에 기존 로그인 정보가 남아 있으면 삭제, 그렇지 않으면 그냥 리턴
		// 세션 객체를 얻어옴
		HttpSession session = request.getSession();
		Object id = session.getAttribute("login_id");
		if (id != null) { // 세션에 기존 정보가 남아 있는 경우
			session.removeAttribute("login_id");
			session.removeAttribute("usertype");
			session.removeAttribute("name");
			session.removeAttribute("dept");
			session.removeAttribute("profileimage");
			
			logger.info("기존 로그인 정보 삭제됨");
		} 
		return true;
	}
}
