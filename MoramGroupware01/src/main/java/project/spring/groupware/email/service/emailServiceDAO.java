package project.spring.groupware.email.service;

import java.util.List;

import project.spring.groupware.email.domain.EmailVO;
import project.spring.groupware.email.pageutil.PaginationCriteria;
import project.spring.groupware.member.domain.MemberVO;

public interface emailServiceDAO {

	public abstract int insert(EmailVO vo);
	public abstract MemberVO member_one(String userid);
	public abstract List<EmailVO> send_emailList(String gwMail);
	public abstract List<EmailVO> delete_emailList(String gwMail);

	public abstract List<EmailVO> adressList(int state,PaginationCriteria c);	

	public abstract int totalEmailct(String state,String groupemail);
	public abstract List<MemberVO> member_adress();
	
	//detail에서 보여주기 위한 것
	public abstract EmailVO detailEmail(int num);
}

