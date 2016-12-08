package project.spring.groupware.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.board.domain.ReplyAddNameVO;
import project.spring.groupware.board.domain.ReplyVO;
import project.spring.groupware.board.persistence.TeamOneReplyDAO;

@Service
public class TeamOneReplyServiceImpl implements TeamOneReplyService {

	@Autowired
	private TeamOneReplyDAO dao;
	
	@Override
	public int create(ReplyVO vo) {
		int result = dao.insert(vo);
		return result;
	}

	@Override
	public List<ReplyVO> read(int bno) {
		List<ReplyVO> list = dao.select(bno);
		return list;
	}

	@Override
	public int update(ReplyVO vo) {
		int result = dao.update(vo);
		return result;
	}

	@Override
	public int delete(int rno) {
		int result = dao.delete(rno);
		return result;
	}

	@Override
	public int deleteByBno(int bno) {
		int result = dao.deleteByBno(bno);
		return result;
	}

	@Override
	public List<ReplyAddNameVO> selectName(int bno) {
		// TODO Auto-generated method stub
		return dao.selectName(bno);
	}
}
