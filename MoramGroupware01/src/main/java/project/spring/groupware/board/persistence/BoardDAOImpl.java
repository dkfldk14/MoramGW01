package project.spring.groupware.board.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.board.domain.BoardAddNameVO;
import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;



@Repository
public class BoardDAOImpl implements BoardDAO {
	private static final String NAMESPACE = "BoardMapper";
	private static final String NAMESPACEFORREPLY = "replyMapper";
	
	private static Logger logger =
			LoggerFactory.getLogger(BoardDAOImpl.class);
	
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
			
		return sqlSession.update(NAMESPACE + ".replycnt", bno);
	}
	
	@Override
	public List<BoardAddNameVO> listSearchCriteria(SearchCriteria c) {
		logger.info("searchType: " + c.getSearchType());
		logger.info("keyword: " + c.getKeyword());
		logger.info("start: " + c.getStart());
		logger.info("end: " + c.getEnd());
				
		return sqlSession.selectList(NAMESPACE+".listSearchCriteria", c);
	}
	
	@Override
	public int viewcnt(int bno) {
		
		return sqlSession.update(NAMESPACE + ".viewcnt", bno);		
	}

	@Override
	public int getSearchNumOfRecords(SearchCriteria c) {
		
		return sqlSession.selectOne(NAMESPACE + ".searchTotalCount", c);
	}

	@Override
	public List<BoardAddNameVO> selectName(String userid) {
		
		return sqlSession.selectList(NAMESPACE + ".useridToChangeName", userid);
	}
	
	@Override
	public List<BoardAddNameVO> listPageName(PaginationCriteria c) {
		
		return sqlSession.selectList(NAMESPACE + ".listPageName" , c);
	}
	
}
