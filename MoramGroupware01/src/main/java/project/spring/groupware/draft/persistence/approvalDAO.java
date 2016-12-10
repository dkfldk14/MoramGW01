package project.spring.groupware.draft.persistence;

import java.util.List;

import project.spring.groupware.draft.domain.ApprovalVO;
import project.spring.groupware.draft.domain.DrafterDTO;
import project.spring.groupware.draft.domain.FinishDTO;
import project.spring.groupware.draft.domain.ReturnDTO;
import project.spring.groupware.draft.pageutil.PaginationCriteria;
import project.spring.groupware.member.domain.MemberVO;


public interface approvalDAO {
	public abstract List<ApprovalVO> select(String id);
	public abstract ApprovalVO selectMe(String id);
	public abstract int createDraft(ApprovalVO vo); // 기안서 입력 -> 기안자 테이블
	public abstract int createFinal(ApprovalVO vo); // 기안서 입력 -> 결재자 테이블
	public abstract int createReturn(ApprovalVO vo); // 기안서 반려 -> 반려자 테이블
	public abstract int createReturnToFinal(ApprovalVO vo); // 기안서 반려 -> 기결함 테이블
	public abstract int createFinish(ApprovalVO vo); // 결재 최종 승인 -> 기결함 테이블
	public abstract int createOrder(String id, String draft_index);
	public abstract ApprovalVO selectAPname(String id); // 기안서 종류 찾기 -> 인덱스를 위하여
	public abstract int selectCount(String count); // 기안서 결재번호 -> 인덱스를 위하여
	public abstract String selectDraft_index(String draft_index); // 기안서 인덱스 찾기 -> 여러가지 쓸 곳 있음
	public abstract int updateReturnDraft(String draft_index); // 반려당했을때 정보 변경 -> 기안자 테이블
	public abstract int updateFinishDraft(String draft_index); // 결제가 끝났을때 정보 변경 -> 기안자 테이블
	public abstract int updateOrder(String final_id, String draft_index);
	public abstract ApprovalVO selectAllForReturn(String draft_index);
	public abstract int deleteFinalize(String draft_index);
	public abstract int selectFinalnum(String draft_index);
	public abstract int selectFinalize(String draft_index);
	public abstract int updateFinalize(ApprovalVO vo);
	public abstract List<ApprovalVO> selectFinal_ID(String id);
	public abstract List<String> selectOrder(String id);
	public abstract String selectFinalIdOrder(String final_id, String draft_index);
	public abstract int deleteOrder(String draft_index);
	public abstract String selectName1Finalize(String draft_index);
	public abstract String selectName2Finalize(String draft_index);
	public abstract String selectName3Finalize(String draft_index);
	public abstract String selectName4Finalize(String draft_index);
	public abstract String selectName5Finalize(String draft_index);
	public abstract String selectFinalid(String draft_index);
	public abstract String selectFinal_id1(String name);
	public abstract String selectFinal_id2(String name);
	public abstract String selectFinal_id3(String name);
	public abstract String selectFinal_id4(String name);
	public abstract String selectFinal_id5(String name);
		
	public abstract List<DrafterDTO> selectForDrafterId(String id);
	public abstract List<DrafterDTO> selectForFinalizerId(String id);
	public abstract List<ReturnDTO> selectForReturnId(String id);
	public abstract List<FinishDTO> selectForFinishId(String id);
	public abstract List<MemberVO> selectForPopup();
	
	// 페이징 처리
	public abstract int getNumOfRecords();
	public abstract List<ApprovalVO> select(String id, PaginationCriteria c);
	
}
