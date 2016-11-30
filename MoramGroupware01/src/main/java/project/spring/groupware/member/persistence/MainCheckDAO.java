package project.spring.groupware.member.persistence;

import java.util.List;

import project.spring.groupware.member.domain.MainCheckVO;


public interface MainCheckDAO {
	
	public abstract int create(MainCheckVO vo);
	public abstract List<MainCheckVO> selecttodayid(String id);
	public abstract List<MainCheckVO> readall();
	public abstract int updatecheckout(MainCheckVO vo);
	
	public abstract List<MainCheckVO> selectsevendays();
	public abstract List<MainCheckVO> selecttodayall();
} // end interface ReplyDAO















