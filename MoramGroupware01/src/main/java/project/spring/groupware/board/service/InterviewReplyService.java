package project.spring.groupware.board.service;

import java.util.List;

import project.spring.groupware.board.domain.ReplyVO;



public interface InterviewReplyService {
	public abstract int create(ReplyVO vo);
	public abstract List<ReplyVO> read(int bno);
	public abstract int update(ReplyVO vo);
	public abstract int delete(int rno);
	public abstract int deleteByBno(int bno);
}
