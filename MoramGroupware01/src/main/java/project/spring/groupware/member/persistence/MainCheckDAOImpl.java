package project.spring.groupware.member.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.member.domain.MainCheckVO;

@Repository
public class MainCheckDAOImpl implements MainCheckDAO {
	
	private static final String NAMESPACE =
			"project.spring.groupware.CheckMapper";
	
	private static final Logger logger= LoggerFactory.getLogger(MainCheckDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int create(MainCheckVO vo) {
		logger.info(vo.getId().toString());
		return sqlSession.insert(NAMESPACE + ".insert-checkin", vo);
	}

	@Override
	public List<MainCheckVO> selecttodayid(String id) {		
		return sqlSession.selectList(NAMESPACE+ ".selecttodayid", id);
	}

	@Override
	public int updatecheckout(MainCheckVO vo) {
		return sqlSession.update(NAMESPACE+".update-checkout", vo);
	}

	@Override
	public List<MainCheckVO> readall() {
		return sqlSession.selectList(NAMESPACE+ ".selectall");
	}

	@Override
	public List<MainCheckVO> selectsevendays() {
		return sqlSession.selectList(NAMESPACE+".selectsevendays");
	}
	
	@Override
	public List<MainCheckVO> selecttodayall() {
		return sqlSession.selectList(NAMESPACE+".selecttodayall");
	}
	
	@Override
	public List<MainCheckVO> selectallweek() {
		return sqlSession.selectList(NAMESPACE+".selectallweek");
	}

	@Override
	public List<MainCheckVO> selectlistpage() {
		return sqlSession.selectList(NAMESPACE+".selectlistpage");
	}


}
