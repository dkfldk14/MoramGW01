package project.spring.groupware.member.aop;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.net.URLCodec;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.Pointcut;
import org.springframework.stereotype.Component;

import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;



@Component
@Aspect
public class MemberJoinsecretAop {
	private static final Logger logger = LoggerFactory.getLogger(MemberJoinsecretAop.class);
	
	//비밀번호 저장 변수
	private String ps;
	
	//암호화 된 비번 저장 변수
	String ps1;
	
	String key = "aes256-test-key!!";
	
	@Before("execution(int project.spring.groupware.member.service.MemberService.insertMember(..))")//클래스 주소가 joinpoint(execution(int...)앞에 타입은 메소드 리턴타입)
	//매개변수 찍기 귀찮으면 ..
	public void beforeCreate(JoinPoint jp){
		logger.info("-----------------");
		logger.info("beforecreate()호출");
		logger.info("-----------------");
		logger.info(Arrays.toString(jp.getArgs())); //배열에 있는 원소 하나하나를 찍으려면 arrays.tostring해야함
		//조인포인트(실행될 메서드)의 매개변수가 args
		//매개변수중 배열의 0번째 즉 1번째 매개변수를 꺼내서 Vo 타입으로 변환.
		Object[] obj = jp.getArgs();
		MemberVO vo = (MemberVO) obj[0];
		logger.info(vo.getPwd());
		ps=vo.getPwd();
		
		
		try {
			AesAuthkey auth = new AesAuthkey(key);
			URLCodec codec = new URLCodec();
			
			ps1 = codec.encode(auth.aesEncode(ps));
			logger.info(ps1);
			vo.setPwd(ps1);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvalidAlgorithmParameterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (EncoderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Around("execution(* project.spring.groupware.member.service.MemberService.loginCheck(..))")
	public LoginVO afterPassword(ProceedingJoinPoint jp) throws Throwable{
		logger.info("복호화임");
		
		Object obj= jp.proceed();
		if(obj==null){
			return null;
		}else{
		LoginVO vo = (LoginVO) obj;
		logger.info("값은?"+vo.getPwd());
		
		AesAuthkey auth = new AesAuthkey(key);
		URLCodec codec = new URLCodec();
		
		vo.setPwd(auth.aesDecode(codec.decode(vo.getPwd())));
		
		return vo;
		}
	}
}
