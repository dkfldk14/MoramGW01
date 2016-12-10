package project.spring.groupware.board.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.board.domain.ReplyAddNameVO;
import project.spring.groupware.board.domain.ReplyVO;



@Repository
public class InterviewReplyDAOImpl implements InterviewReplyDAO {
	private static final String NAMESPACE = "InterviewReplyMapper";
	
	
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insert(ReplyVO vo) {
		int result = sqlSession.insert(NAMESPACE +".insert", vo);
		return result;
	}

	@Override
	public List<ReplyVO> select(int bno) {
		List<ReplyVO> list = sqlSession.selectList(NAMESPACE + ".select", bno);
		return list;
	}

	@Override
	public int update(ReplyVO vo) {
		int result = sqlSession.update(NAMESPACE + ".update", vo);	
		return result;
	}

	@Override
	public int delete(int rno) {
		int result = sqlSession.delete(NAMESPACE +".delete", rno);
		return result;
	}

	@Override
	public int deleteByBno(int bno) {
		int result = sqlSession.delete(NAMESPACE +".deleteByBno", bno);
		return result;
	}

	@Override
	public List<ReplyAddNameVO> selectName(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + ".selectName", bno);
	}
	
}
