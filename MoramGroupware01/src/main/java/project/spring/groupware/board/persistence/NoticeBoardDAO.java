package project.spring.groupware.board.persistence;

import java.util.List;

import project.spring.groupware.board.domain.BoardAddNameVO;
import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;



public interface NoticeBoardDAO {
	public abstract int insert(BoardVO vo);
	public abstract List<BoardVO> select();
	public abstract BoardVO select(int bno);
	public abstract int update(BoardVO vo);
	public abstract int delete(int bno);
	
	//페이징 처리
	public abstract int getNumofRecords();
	public abstract List<BoardVO> select(PaginationCriteria c);
	
	//게시글 검색
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
