package project.spring.groupware.member.service;



import java.util.List;

import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;

public interface MemberService {
	public abstract String checkId(String userid);
	public abstract int insertMember(MemberVO vo);
	public abstract LoginVO loginCheck(String userid);
	public abstract MemberVO selectName(String userid);
	public abstract List<MemberVO> manageMember();
	public abstract int adminUudateMem(String id, String dept, String usertype);
	public abstract MemberVO selectAdminMem(String userid);
	public abstract int updateMemberInfo(MemberVO vo);
	public abstract int adminAllmem();
	public abstract int adminUsertypeMem();
}
