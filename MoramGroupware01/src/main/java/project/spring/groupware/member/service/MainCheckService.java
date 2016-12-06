package project.spring.groupware.member.service;


import java.util.List;

import project.spring.groupware.member.domain.MainCheckVO;

public interface MainCheckService {

	// 입실버튼 insert
	public abstract int create(MainCheckVO vo);
	// 오늘 내 id의 출근기록 select
	public abstract List<MainCheckVO> selecttodayid(String id);
	// 모든 출근기록 select
	public abstract List<MainCheckVO> readall();
	// 퇴실버튼 update
	public abstract int updatecheckout(MainCheckVO vo);
	
	// 저번주 막대그래프에서 사용할 select
	public abstract List<MainCheckVO> selectsevendays();
	// 오늘자 원형그래프에서 사용할 select
	public abstract List<MainCheckVO> selecttodayall();
}