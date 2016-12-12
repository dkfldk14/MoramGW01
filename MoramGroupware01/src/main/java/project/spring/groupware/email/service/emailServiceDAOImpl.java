package project.spring.groupware.email.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.email.domain.EmailVO;
import project.spring.groupware.email.pageutil.PaginationCriteria;
import project.spring.groupware.email.persistence.emailDAO;
import project.spring.groupware.member.domain.MemberVO;


@Service
public class emailServiceDAOImpl implements emailServiceDAO {

	
	@Autowired
	private emailDAO dao;
	
	
	@Override
	public int insert(EmailVO vo) {
			int result=dao.Insert(vo);
		return result;
	}


	@Override
	public MemberVO member_one(String userid) {
			
		return dao.member_one(userid);
	}


	@Override
	public List<EmailVO> send_emailList(String gwMail) {
		return dao.send_emailList(gwMail);
	}


	@Override
	public List<EmailVO> delete_emailList(String gwMail) {
		return dao.delete_emailList(gwMail);
	}



@Override
public int totalEmailct(String state, String groupemail) {
	// TODO Auto-generated method stub
	return dao.totalEmailct(state, groupemail);
}
	
	@Override
	public List<EmailVO> adressList(int state, PaginationCriteria c,String from_email) {
		return dao.adressList(state, c, from_email);
	}
	
	
	@Override
	public List<MemberVO> member_adress() {
		return dao.member_adress();
	}


	@Override
	public EmailVO detailEmail(int num) {
		// TODO Auto-generated method stub
		return dao.detailEmail(num);
	}
	@Override
	public int delete_change(int num) {
		
		return dao.delete_change(num);
	}
	
	@Override
	public int select_mail_num() {
		// TODO Auto-generated method stub
		return dao.select_mail_num();
	}
}
