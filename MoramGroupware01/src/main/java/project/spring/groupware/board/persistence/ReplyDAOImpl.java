package project.spring.groupware.board.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.board.domain.ReplyVO;



@Repository
public class ReplyDAOImpl implements ReplyDAO {
	private static final String NAMESPACE = "replyMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(ReplyVO vo) {
		return sqlSession.insert(NAMESPACE +".insert", vo);
	}

	@Override
	public List<ReplyVO> select(int bno) {
		List<ReplyVO>list = sqlSession.selectList(NAMESPACE + ".select", bno);
		return list;
	}

	@Override
	public int update(ReplyVO vo) {
		int result = sqlSession.update(NAMESPACE + ".update", vo);
		return result;
	}

	@Override
	public int delete(int rno) {
		int result = sqlSession.delete(NAMESPACE + ".delete", rno);
		return result;
	}

	@Override
	public int deleteByBno(int bno) {
		int result = sqlSession.delete(NAMESPACE + ".deleteByBno", bno);
		return result;
	}
}
