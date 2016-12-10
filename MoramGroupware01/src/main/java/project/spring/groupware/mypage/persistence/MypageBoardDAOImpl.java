package project.spring.groupware.mypage.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.mypage.domain.MyPageBoardVO;
import project.spring.groupware.mypage.pageutil.PaginationCriteria_userid;

@Repository
public class MypageBoardDAOImpl implements MypageBoardDAO {
	private static final String NAMESPACE = "MyPageBoardMapper";
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MyPageBoardVO> mypagelist(String userid) {
		
		return sqlSession.selectList(NAMESPACE + ".mypageList", userid);
	}

	@Override
	public List<MyPageBoardVO> mypagelistPaging(PaginationCriteria_userid c) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".mypageListPaging", c);
	}

	@Override
	public int totalCount(String userid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + ".myPageListTotalCount", userid);
	}

}
