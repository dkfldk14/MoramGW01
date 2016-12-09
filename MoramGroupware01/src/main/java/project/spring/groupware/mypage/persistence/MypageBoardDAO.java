package project.spring.groupware.mypage.persistence;

import java.util.List;

import project.spring.groupware.mypage.domain.MyPageBoardVO;
import project.spring.groupware.mypage.pageutil.PaginationCriteria_userid;

public interface MypageBoardDAO {
	public abstract List<MyPageBoardVO> mypagelist(String userid);
	
	public abstract List<MyPageBoardVO> mypagelistPaging(PaginationCriteria_userid c);
	
	public int totalCount(String userid);
}
