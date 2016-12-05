package project.spring.groupware.board.service;

import java.util.List;

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;


public interface InterviewBoardService {
	//게시글 생성
	public abstract int create(BoardVO vo);
	//전체 게시글 읽기
	public abstract List<BoardVO> read();
	//선택된 게시글 읽기
	public abstract BoardVO read(int bno);
	//게시글 수정
	public abstract int update(BoardVO vo);
	//게시글 삭제
	public abstract int delete(int bno);
	
	//페이지 화 시킨 것
	public abstract int getNumOfRecords();
	public abstract List<BoardVO> read(PaginationCriteria c);
	
	//전체 게시글 카운트
	public abstract int count (int bno);
	
	//댓글 개수를 테이블 리스트에 나타내는 함수 업데이트
	public abstract int replycnt(int bno);
	
	//게시글 검색 기능을 나타내는 함수
	public List<BoardVO> listSearchCriteria(SearchCriteria c);

	//조회수를 위한 함수
	public int viewcnt (int bno);
}
