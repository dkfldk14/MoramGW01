package project.spring.groupware.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.board.domain.BoardAddNameVO;
import project.spring.groupware.board.domain.BoardVO;
import project.spring.groupware.board.pageuitl.PaginationCriteria;
import project.spring.groupware.board.persistence.TeamTwoBoardDAO;
import project.spring.groupware.board.searchutil.SearchCriteria;

@Service
public class TeamTwoBoardServiceImpl implements TeamTwoBoardService {

	@Autowired
	private TeamTwoBoardDAO dao;
	
	@Override
	public int create(BoardVO vo) {
		int result = dao.inert(vo);
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
		List<BoardVO> list = dao.select(c);
		return list;
	}

	@Override
	public int count(int bno) {
		int result = dao.count(bno);
		return result;
	}

	@Override
	public int replycnt(int bno) {
		int result = dao.totalReplycnt(bno);
		return result;
	}

	@Override
	public List<BoardAddNameVO> listSearchCriteria(SearchCriteria c) {
		List<BoardAddNameVO> list = dao.listSearchCriteria(c);
		return list;
	}

	@Override
	public int viewcnt(int bno) {
		int result = dao.viewcnt(bno);
		return result;
	}
	
	@Override
	public int getSearchNumOfRecords(SearchCriteria c) {
		
		return dao.getSearchNumOfRecords(c);
	}

	@Override
	public List<BoardAddNameVO> selectName(String userid) {
		// TODO Auto-generated method stub
		return dao.selectName(userid);
	}

	@Override
	public List<BoardAddNameVO> listPageName(PaginationCriteria c) {
		// TODO Auto-generated method stub
		return dao.listPageName(c);
	}
}
