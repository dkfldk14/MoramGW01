package project.spring.groupware.board.service;

import java.util.List;

import project.spring.groupware.board.domain.BoardAddNameVO;
import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;



public interface NoticeBoardService {
	public abstract int create(BoardVO vo);
	public abstract List<BoardVO> read();
	public abstract BoardVO read(int bno);
	public abstract int update(BoardVO vo);
	public abstract int delete(int bno);
	
	public abstract int getNumOfRecords();
	public abstract List<BoardVO>read(PaginationCriteria c);
	
	public List<BoardAddNameVO> listSearchCriteria(SearchCriteria c);
	
	public int viewcnt(int bno);
	
	//게시글 검색할 때 필요한 페이징
	public abstract int getSearchNumOfRecords(SearchCriteria c);
	
	//아이디를 이름으로 바꿔서 보여주는 게시판
	public abstract List<BoardAddNameVO> selectName(String userid);
	
	//아이디를 이름으로 바꿀때 페이지 
	public abstract List<BoardAddNameVO> listPageName(PaginationCriteria c);
}
