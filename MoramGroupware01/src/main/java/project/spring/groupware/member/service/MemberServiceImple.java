package project.spring.groupware.member.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;
import project.spring.groupware.member.persistence.MemberDAO;
import project.spring.groupware.member.persistence.MemberDAOImple;

@Service
public class MemberServiceImple implements MemberService {

	private static final Logger logger = LoggerFactory.getLogger(MemberServiceImple.class);
	
	@Autowired
	private MemberDAO dao;
	
	@Override
	public String checkId(String userid) {
		// TODO Auto-generated method stub
		
		String id = dao.checkId(userid);
		
		return id;
	}

	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		
		int result = dao.insertMember(vo);
		return result;
	}

	@Override
	public LoginVO loginCheck(String userid) {
		// TODO Auto-generated method stub
		
		LoginVO vo= dao.loginCheck(userid);
		return vo;
	}

	@Override
	public String selectName(String userid) {
		// TODO Auto-generated method stub
		logger.info("서비스");
		return dao.selectName(userid);
	}

}
