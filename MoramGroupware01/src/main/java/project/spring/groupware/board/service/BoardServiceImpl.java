package project.spring.groupware.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.board.domain.BoardAddNameVO;
import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.persistence.BoardDAO;
import project.spring.groupware.board.searchutil.SearchCriteria;


@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO dao;
	
	@Override
	public int create(BoardVO vo) {
		int result = dao.inert(vo);
		return result;
	}

	@Override
	public List<BoardVO> read() {
		
		return dao.select();
	}

	@Override
	public BoardVO read(int bno) {
	
		return dao.select(bno);
	}

	@Override
	public int update(BoardVO vo) {
		
		return dao.update(vo);
	}

	@Override
	public int delete(int bno) {
		
		return dao.delete(bno);
	}

	@Override
	public int getNumOfRecords() {
		
		return dao.getNumofRecords();
	}

	@Override
	public List<BoardVO> read(PaginationCriteria c) {
		
		return dao.select(c);
	}

	@Override
	public int count(int bno) {
		
		return dao.count(bno);
	}
	
	@Override
	public int replycnt(int bno) {
		
		return dao.totalReplycnt(bno);
	}
	
	@Override
	public List<BoardAddNameVO> listSearchCriteria(SearchCriteria c) {
		
		return dao.listSearchCriteria(c);
	}
	
	@Override
	public int viewcnt(int bno) {
		
		return dao.viewcnt(bno);
	}

	@Override
	public int getSearchNumOfRecords(SearchCriteria c) {
		
		return dao.getSearchNumOfRecords(c);
	}

	@Override
	public List<BoardAddNameVO> selectName(String userid) {
		
		return dao.selectName(userid);
	}

	@Override
	public List<BoardAddNameVO> listPageName(PaginationCriteria c) {
		
		return dao.listPageName(c);
	}
}
