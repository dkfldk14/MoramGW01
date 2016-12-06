package project.spring.groupware.board.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;

@Repository
public class TeamTwoBoardDAOImpl implements TeamTwoBoardDAO {

	private static final String NAMESPACE = "TeamtwoMapper";
	private static final String NAMESPACEFORREPLY = "TeamtwoReplyMapper";
	
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int inert(BoardVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insert", vo);
		return result;
	}

	@Override
	public List<BoardVO> select() {
		List<BoardVO> list = sqlSession.selectList(NAMESPACE + ".selectAll");
		return list;
	}

	@Override
	public BoardVO select(int bno) {
		BoardVO vo = sqlSession.selectOne(NAMESPACE + ".selectByBno", bno);
		return vo;
	}

	@Override
	public int update(BoardVO vo) {
		int result = sqlSession.update(NAMESPACE + ".update", vo);
		return result;
	}

	@Override
	public int delete(int bno) {
		int result = sqlSession.delete(NAMESPACE + ".delete", bno);
		return result;
	}

	@Override
	public int getNumofRecords() {
		int result = sqlSession.selectOne(NAMESPACE + ".totalCount");
		return result;
	}

	@Override
	public List<BoardVO> select(PaginationCriteria c) {
		List<BoardVO> list = sqlSession.selectList(NAMESPACE + ".listPage", c);
		return list;
	}

	@Override
	public int count(int bno) {
		int result = sqlSession.selectOne(NAMESPACEFORREPLY + ".numOfRepliesByBno", bno);
		return result;
	}

	@Override
	public int totalReplycnt(int bno) {
		int result = sqlSession.update(NAMESPACE + ".replycnt", bno);
		return result;
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria c) {
		List<BoardVO> list = sqlSession.selectList(NAMESPACE + ".listSearchCriteria", c);
		return list;
	}

	@Override
	public int viewcnt(int bno) {
		int result = sqlSession.update(NAMESPACE + ".viewcnt", bno);
				
		return result;
	}
	
	@Override
	public int getSearchNumOfRecords(SearchCriteria c) {
		
		return sqlSession.selectOne(NAMESPACE + ".searchTotalCount", c);
	}
}
