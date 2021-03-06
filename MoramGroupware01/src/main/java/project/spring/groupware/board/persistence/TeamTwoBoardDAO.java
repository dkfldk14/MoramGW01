package project.spring.groupware.board.persistence;

import java.util.List;

import project.spring.groupware.board.domain.BoardAddNameVO;
import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;

public interface TeamTwoBoardDAO {
	public abstract int inert(BoardVO vo);
	public abstract List<BoardVO> select();
	public abstract BoardVO select(int bno);
	public abstract int update(BoardVO vo);
	public abstract int delete(int bno);
	
	//paging
	public abstract int getNumofRecords();
	public abstract List<BoardVO> select(PaginationCriteria c);
	
	//댓글 수를 넘기기 위한 메소드
	public abstract int count (int bno);
	
	//댓글 수를 전체 리스트에 보여주기 위한 메소드
	public abstract int totalReplycnt(int bno);
	
	//게시글 검색을 위한 메소드
	public abstract List<BoardAddNameVO> listSearchCriteria(SearchCriteria c);
	
	//조회수 카운트를 위한 메소드
	public abstract int viewcnt(int bno);	
	
	//게시글 검색을 위한 페이징 처리
	public abstract int getSearchNumOfRecords(SearchCriteria c);
	
	//아이디를 이름으로 바꿔서 보여주는 게시판
	public abstract List<BoardAddNameVO> selectName(String userid);
	
	//아이디를 이름으로 바꿔서 보여주는 게시판
	public abstract List<BoardAddNameVO> listPageName(PaginationCriteria c);
}
