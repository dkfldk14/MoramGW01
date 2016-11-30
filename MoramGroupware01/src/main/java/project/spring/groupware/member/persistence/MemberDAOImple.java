package project.spring.groupware.member.persistence;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;

@Repository
public class MemberDAOImple implements MemberDAO {

	public static final String NAMESPACE = "project.spring.groupware.MemberMapper";
	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImple.class);
	@Autowired
	SqlSession sqlsession;
	
	@Override
	public String checkId(String userid) {
		// TODO Auto-generated method stub
		
		String id = sqlsession.selectOne(NAMESPACE+".id_check", userid);
		logger.info("아이디: "+id);
		return id;
	}

	@Override
	public int insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		int result=sqlsession.insert(NAMESPACE+".member_join", vo);
		
		logger.info("퍼시스턴스 불림"+result);
		return result;
	}

	@Override
	public LoginVO loginCheck(String userid) {
		// TODO Auto-generated method stub
		
		LoginVO vo = sqlsession.selectOne(NAMESPACE+".login_check", userid);
		//별다른 VO 없이 select 할때 한 개 이상의 데이터를 가져오고 싶다면 ResultType에 리스트로 반환받을 타입(String)을 써주면 된다.
		return vo;
	}

	@Override
	public String selectName(String userid) {
		// TODO Auto-generated method stub
		
		
		String name = sqlsession.selectOne(NAMESPACE+".name_select", userid);
		logger.info("찍혔나"+name);
		return name;
	}

}
