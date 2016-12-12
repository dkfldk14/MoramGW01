package project.spring.groupware.email.persistence;

import java.util.List;


import project.spring.groupware.email.domain.EmailVO;
import project.spring.groupware.email.pageutil.NewPaginationCriteria;
import project.spring.groupware.email.pageutil.PaginationCriteria;
import project.spring.groupware.member.domain.MemberVO;

public interface emailDAO {

	public abstract int Insert(EmailVO vo);
	public abstract MemberVO member_one(String userid);
	public abstract List<EmailVO> send_emailList(String gwMail);
	public abstract List<EmailVO> delete_emailList(String gwMail);
	public abstract List<EmailVO> adressList(int state,PaginationCriteria c, String groupmail);	

	public abstract int totalEmailct(String state,String groupemail);
	public abstract List<MemberVO> member_adress();
	
	//detail에서 보여주기 위한 것
	public abstract EmailVO detailEmail(int num);
	
	public abstract int delete_change(int num);
	public abstract int select_mail_num();
	
	public abstract List<EmailVO>addressList(NewPaginationCriteria c);
	public abstract int totalCount(NewPaginationCriteria c);
	
	
	public abstract List<EmailVO>addressListdelete(NewPaginationCriteria c);
	public abstract int totalCountdelete(NewPaginationCriteria c);
	
	
}
