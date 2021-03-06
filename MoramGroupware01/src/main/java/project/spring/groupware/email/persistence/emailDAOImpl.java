package project.spring.groupware.email.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import project.spring.groupware.email.domain.EmailVO;
import project.spring.groupware.email.pageutil.NewPaginationCriteria;
import project.spring.groupware.email.pageutil.PaginationCriteria;
import project.spring.groupware.member.domain.MemberVO;

@Repository
public class emailDAOImpl implements emailDAO {
	private static final Logger logger=
			LoggerFactory.getLogger(emailDAOImpl.class);
	final String NAMESPACE="project.spring.groupware.EmailMapper";
	
	@Autowired
	private SqlSession SqlSession;
	
	@Override
	public int Insert(EmailVO vo) {
		int result=SqlSession.insert(NAMESPACE+".emailsend-insert", vo);
		
		return result;
	
	}

	@Override
	public MemberVO member_one(String userid) {
		MemberVO vo=SqlSession.selectOne(NAMESPACE+".find_gwmail", userid);
		return vo;
	}

	@Override
	public List<EmailVO> send_emailList(String gwMail) {
		List<EmailVO> vo=SqlSession.selectList(NAMESPACE+".send_emailList",gwMail);
		return vo;
	}

	@Override
	public List<EmailVO> delete_emailList(String gwMail) {
		List<EmailVO> vo=SqlSession.selectList(NAMESPACE+".delete_emailList",gwMail);
		return vo;
	
	}
	
	@Override
	public List<EmailVO> adressList(int state, PaginationCriteria c, String from_email) {
			Map<String, Integer> element=new HashMap<>();
			EmailVO vo=new EmailVO();
			Integer state1=Integer.valueOf(state);
			vo.setState(state);
			element.put("state", state);
			int start = c.getStart();
			int end = c.getEnd();
			logger.info("start: " + start);
			element.put("start", start);
			element.put("end", end);
			/*element.put("from_email", groupmail);
			*/
			
			Map<String,Object> adresslist=new HashMap<>();
			adresslist.put("state", state1);

			adresslist.put("from_email", from_email);
			adresslist.put("start", start);
			adresslist.put("end", end);
					
			List<EmailVO> VO=SqlSession.selectList(NAMESPACE+".adressList",adresslist);
			for(int i=0; i<VO.size();i++){
				logger.info("vo : "+VO.get(i).getSubject());
			}
			
			
			
			return	SqlSession.selectList(NAMESPACE+".adressList",adresslist);
		 
	}

	@Override
	public int totalEmailct(String state,String groupemail) {
		
		Map<String, String> element=new HashMap<>();
		element.put("state", "1");
		String email="dkfldk14@moram.com";
		element.put("from_email", email);
		return SqlSession.selectOne(NAMESPACE+".EmailTotalct",element);
	}
	
	@Override
	public List<MemberVO> member_adress() {
		return SqlSession.selectList(NAMESPACE+".EmailAdressBox");
	}

	@Override
	public EmailVO detailEmail(int num) {
		return SqlSession.selectOne(NAMESPACE + ".detail_Email", num);
	}
	
	
	@Override
	public int delete_change(int num) {
	  
		return  SqlSession.update(NAMESPACE+".delete_change", num);
	}
	
	@Override
	public int select_mail_num() {
		// TODO Auto-generated method stub
		return SqlSession.selectOne(NAMESPACE+".select_mail_num");
	}

	
	@Override
	public List<EmailVO> addressList(NewPaginationCriteria c) {
		// TODO Auto-generated method stub
		return SqlSession.selectList(NAMESPACE + ".addressList", c);
	}
	
	@Override
	public int totalCount(NewPaginationCriteria c) {
		// TODO Auto-generated method stub
		return SqlSession.selectOne(NAMESPACE + ".totalAddressList", c);
	}
	
	
	@Override
	public List<EmailVO> addressListdelete(NewPaginationCriteria c) {
		// TODO Auto-generated method stub
		return SqlSession.selectList(NAMESPACE+".addressListdelete", c);
	}@Override
	public int totalCountdelete(NewPaginationCriteria c) {
		return SqlSession.selectOne(NAMESPACE + ".totalAddressListdelete", c);
	}
}
