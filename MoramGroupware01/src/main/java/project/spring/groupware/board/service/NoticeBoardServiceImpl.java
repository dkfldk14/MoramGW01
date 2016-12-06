package project.spring.groupware.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.persistence.NoticeBoardDAO;
import project.spring.groupware.board.searchutil.SearchCriteria;



@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardDAO dao;

	@Override
	public int create(BoardVO vo) {
		int result = dao.insert(vo);
		return result;
	}

	@Override
	public List<BoardVO> read() {
		List<BoardVO> list = dao.select();
		return list;
	}

	@Override
	public BoardVO read(int bno) {
		BoardVO vo = dao.select(bno);
		return vo;
	}

	@Override
	public int update(BoardVO vo) {
		int result = dao.update(vo);
		return result;
	}

	@Override
	public int delete(int bno) {
		int result = dao.delete(bno);
		return result;
	}

	@Override
	public int getNumOfRecords() {
		int result = dao.getNumofRecords();
		return result;
	}

	@Override
	public List<BoardVO> read(PaginationCriteria c) {
		List<BoardVO>list = dao.select(c);
		return list;
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria c) {
		List<BoardVO>list = dao.listSearchCriteria(c);
		return list;
	}

	@Override
	public int viewcnt(int bno) {
		int result = dao.viewcnt(bno);
		return result;
	}
	
	

}
