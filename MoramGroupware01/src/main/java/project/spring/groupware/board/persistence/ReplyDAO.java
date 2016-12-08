package project.spring.groupware.board.persistence;

import java.util.List;
import java.util.Map;

import project.spring.groupware.board.domain.ReplyAddNameVO;
import project.spring.groupware.board.domain.ReplyVO;



public interface ReplyDAO {
	
	public abstract int insert(ReplyVO vo);
	public abstract List<ReplyVO>select(int bno);
	public abstract int update(ReplyVO vo);
	public abstract int delete(int rno);
	//게시글을 지울때 댓글도 같이 지워지는 함수
	public abstract int deleteByBno(int bno);
	//이름으로 댓글을 보여줄때
	public abstract List<ReplyAddNameVO>selectName(int bno);
	
}
