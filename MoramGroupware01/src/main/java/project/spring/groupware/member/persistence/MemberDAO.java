package project.spring.groupware.member.persistence;



import java.util.List;

import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;

public interface MemberDAO {
	public abstract String checkId(String userid);
	public abstract int insertMember(MemberVO vo);
	public abstract LoginVO loginCheck(String userid);
	public abstract MemberVO selectName(String userid);
	public abstract List<MemberVO> manageMember();
	public abstract int adminUpdateMem(String id, String dept, String usertype);
	public abstract MemberVO selectAdminMem(String userid);
	public abstract int updateMemberInfo(MemberVO vo);
	public abstract int adminAllmem();
	public abstract int adminUsertypeMem();
}
