package project.spring.groupware.member.persistence;



import project.spring.groupware.member.domain.LoginVO;
import project.spring.groupware.member.domain.MemberVO;

public interface MemberDAO {
	public abstract String checkId(String userid);
	public abstract int insertMember(MemberVO vo);
	public abstract LoginVO loginCheck(String userid);
	public abstract String selectName(String userid);
}
