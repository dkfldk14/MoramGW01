package project.spring.groupware.board.service;

import java.util.List;

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.searchutil.SearchCriteria;



public interface BoardService {

	//���� �ۼ� ���
	public abstract int create(BoardVO vo);
	//�Խñ� ��ü ����Ʈ
	public abstract List<BoardVO> read();
	//�� ��ȣ �˻�
	public abstract BoardVO read(int bno);
	//������Ʈ
	public abstract int update(BoardVO vo);
	//����
	public abstract int delete(int bno);
	
	//����¡ ó���� ���� �޼ҵ�
	public abstract int getNumOfRecords();
	public abstract List<BoardVO> read(PaginationCriteria c);
	
	//��� ���� �ֱ� ���� �޼ҵ�
	//TODO :
	public abstract int count (int bno);
	
	//댓글 개수를 테이블 리스트에 나타내는 함수 업데이트
	public abstract int replycnt(int bno);
	
	//게시글 검색 기능을 나타내는 함수
	public List<BoardVO> listSearchCriteria(SearchCriteria c);

	//조회수를 위한 함수
	public int viewcnt (int bno);
	
	//게시글 검색할 때 필요한 페이징
	public abstract int getSearchNumOfRecords(SearchCriteria c);
	
}
