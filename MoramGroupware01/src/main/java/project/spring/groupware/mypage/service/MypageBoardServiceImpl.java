package project.spring.groupware.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.mypage.domain.MyPageBoardVO;
import project.spring.groupware.mypage.pageutil.PaginationCriteria_userid;
import project.spring.groupware.mypage.persistence.MypageBoardDAO;

@Service
public class MypageBoardServiceImpl implements MypageBoardService {

	@Autowired
	private MypageBoardDAO dao;
	
	@Override
	public List<MyPageBoardVO> mypagelist(String userid) {
		// TODO Auto-generated method stub
		return dao.mypagelist(userid);
	}

	@Override
	public List<MyPageBoardVO> mypagelistPaging(PaginationCriteria_userid c) {
		// TODO Auto-generated method stub
		return dao.mypagelistPaging(c);
	}

	@Override
	public int totalCount(String userid) {
		// TODO Auto-generated method stub
		return dao.totalCount(userid);
	}

}
