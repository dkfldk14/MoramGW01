package project.spring.groupware.draft.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.spring.groupware.draft.domain.ApprovalVO;
import project.spring.groupware.draft.domain.DrafterDTO;
import project.spring.groupware.draft.domain.ReturnDTO;
import project.spring.groupware.draft.pageutil.PaginationCriteria;


@Repository
public class approvalDAOImpl implements approvalDAO {
	
	private static final String NAMESPACE = "project.spring.groupware.ApprovalMapper";
	private static final Logger logger = LoggerFactory.getLogger(approvalDAOImpl.class);
	
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public ApprovalVO selectMe(String id) {
		logger.info(id);
		return sqlSession.selectOne(NAMESPACE + ".selectMe", id);
	}
	
	@Override
	public List<ApprovalVO> select(String id) {
		logger.info("id:" + id);
		List<ApprovalVO> list = sqlSession.selectList(NAMESPACE + ".selectID", id);
		logger.info("리스트: " + list.size());
		return list;
	}
	
	@Override
	public int createDraft(ApprovalVO vo) {
		logger.info("id: " + vo.getId());
		logger.info("id: " + vo.getName());
		logger.info("id: " + vo.getDept());
		logger.info("id: " + vo.getApprovalno());
		logger.info("id: " + vo.getTitle());
		logger.info("id: " + vo.getApprovalname());
		logger.info("id: " + vo.getContent());
		logger.info("id: " + vo.getFinal_id1());
		logger.info("id: " + vo.getFinalize());
		logger.info("id: " + vo.getDraft_index());
		int result = sqlSession.insert(NAMESPACE + ".insertTest", vo);
		return result;
	}

	@Override
	public ApprovalVO selectAPname(String id) {
		ApprovalVO vo = sqlSession.selectOne(NAMESPACE + ".selectAPname", id);
		logger.info("id: " + id);
		logger.info("name: " + vo.getApprovalname());
		return vo;
	}
	
	@Override
	public int selectCount(String count) {		
		int result = sqlSession.selectOne(NAMESPACE + ".selectCount", count);
		return result;
	}
	
	@Override
	public int createFinal(ApprovalVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insertFinalize", vo);
		return result;
	}
	
	@Override
	public int createReturn(ApprovalVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insertReturn", vo);
		return result;
	}
	
	@Override
	public int createOrder(String id, String draft_index) {
		Map<String, String> args = new HashMap<>();
		args.put("id", id);
		args.put("draft_index", draft_index);
		return sqlSession.insert(NAMESPACE + ".insertOrder", args);
	}
	
	@Override
	public String selectFinalIdOrder(String final_id, String draft_index) {
		logger.info("final_id: " + final_id);
		if (final_id == "final_id1") {
			return sqlSession.selectOne(NAMESPACE + ".selectIdFinalizer1", draft_index);
		} else if (final_id == "final_id2") {
			return sqlSession.selectOne(NAMESPACE + ".selectIdFinalizer2", draft_index);
		} else if (final_id == "final_id3") {
			return sqlSession.selectOne(NAMESPACE + ".selectIdFinalizer3", draft_index);
		} else if (final_id == "final_id4") {
			return sqlSession.selectOne(NAMESPACE + ".selectIdFinalizer4", draft_index);
		} else {
			return sqlSession.selectOne(NAMESPACE + ".selectIdFinalizer5", draft_index);
		}
	}
	
	@Override
	public int updateOrder(String final_id, String draft_index) {
		Map<String, String> args = new HashMap<>();
		args.put("final_id", final_id);
		args.put("draft_index", draft_index);
		return sqlSession.update(NAMESPACE + ".updateOrder", args);
	}
	
	@Override
	public String selectDraft_index(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectIndexForReturn", draft_index);
	}
	
	@Override
	public int updateReturnDraft(String draft_index) {
		logger.info("draft_index = " + draft_index);
		int result = sqlSession.update(NAMESPACE + ".updateReturndate", draft_index);
		logger.info("result = " + result);
		return result;
	}
	
	@Override
	public int updateFinishDraft(String draft_index) {
		return sqlSession.update(NAMESPACE + ".updateEnddate", draft_index);
	}
	
	@Override
	public int createReturnToFinal(ApprovalVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insertFinishReturn", vo);
		return result;
	}
	
	@Override
	public int createFinish(ApprovalVO vo) {
		int result = sqlSession.insert(NAMESPACE + ".insertFinish", vo);
		return result;
	}
	
	@Override
	public ApprovalVO selectAllForReturn(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectAllForReturn", draft_index);
	}
	
	@Override
	public int deleteFinalize(String draft_index) {
		return sqlSession.delete(NAMESPACE + ".deleteFinalize", draft_index);
	}
	
	@Override
	public int selectFinalnum(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectFinalNum", draft_index);
	}
	
	@Override
	public int selectFinalize(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectFinalize", draft_index);
	}
	
	@Override
	public int updateFinalize(ApprovalVO vo) {
		return sqlSession.update(NAMESPACE + ".updateFinalize", vo);
	}
	
	@Override
	public List<ApprovalVO> selectFinal_ID(String id) {
		return sqlSession.selectList(NAMESPACE + ".selectFinal_id", id);
	}
	
	@Override
	public List<String> selectOrder(String id) {
		return sqlSession.selectList(NAMESPACE + ".selectOrder", id);
	}
	
	@Override
	public int deleteOrder(String draft_index) {
		return sqlSession.delete(NAMESPACE + ".deleteOrder", draft_index);
	}

	@Override
	public int getNumOfRecords() {
		return sqlSession.selectOne(NAMESPACE + ".totalCount");
	}

	@Override
	public List<ApprovalVO> select(String id, PaginationCriteria c) {
		Map<String, String> args = new HashMap<>();
		String start = String.valueOf(c.getStart());
		String end = String.valueOf(c.getEnd());
		args.put("id", id);
		args.put("start", start);
		args.put("end", end);
		return sqlSession.selectList(NAMESPACE + ".listpage-approvalpage", args);
	}

	@Override
	public String selectName1Finalize(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectNameFinalizer1", draft_index);
	}

	@Override
	public String selectName2Finalize(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectNameFinalizer2", draft_index);
	}

	@Override
	public String selectName3Finalize(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectNameFinalizer3", draft_index);
	}

	@Override
	public String selectName4Finalize(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectNameFinalizer4", draft_index);
	}

	@Override
	public String selectName5Finalize(String draft_index) {
		return sqlSession.selectOne(NAMESPACE + ".selectNameFinalizer5", draft_index);
	}
	
	@Override
	public List<DrafterDTO> selectForDrafterId(String id) {
		if(id != null) {
			System.out.println(id);
			return sqlSession.selectList(NAMESPACE + ".selectForDraftid", id);
		} else {
			return null;
		}
	}
	
	@Override
	public List<DrafterDTO> selectForFinalizerId(String id) {
		if(id != null) {
			System.out.println(id);
			return sqlSession.selectList(NAMESPACE + ".selectForFinalid", id);
		} else {
			return null;
		}
	}
	
	@Override
	public List<ReturnDTO> selectForReturnId(String id) {
		if(id != null) {
			return sqlSession.selectList(NAMESPACE + ".selectForReturnid", id);
		} else {
			return null;
		}
	}
	
}