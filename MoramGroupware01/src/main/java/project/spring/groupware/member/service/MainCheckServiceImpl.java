package project.spring.groupware.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.spring.groupware.member.domain.MainCheckVO;
import project.spring.groupware.member.persistence.MainCheckDAO;

@Service
public class MainCheckServiceImpl implements MainCheckService {
	
	@Autowired
	private MainCheckDAO mainDAO;
	
	@Override
	public int create(MainCheckVO vo) {
		return mainDAO.create(vo);
	}

	@Override
	public List<MainCheckVO> selecttodayid(String id) {
		return mainDAO.selecttodayid(id);
	}

	@Override
	public int updatecheckout(MainCheckVO vo) {

		return mainDAO.updatecheckout(vo);
	}

	@Override
	public List<MainCheckVO> readall() {
		return mainDAO.readall();
	}

	@Override
	public List<MainCheckVO> selectsevendays() {
		return mainDAO.selectsevendays();
	}
	
	@Override
	public List<MainCheckVO> selecttodayall() {
		return mainDAO.selecttodayall();
	}
	
	@Override
	public List<MainCheckVO> selectallweek() {
		return mainDAO.selectallweek();
	}

	@Override
	public List<MainCheckVO> selectlistpage() {
		return mainDAO.selectlistpage();
	}


}
