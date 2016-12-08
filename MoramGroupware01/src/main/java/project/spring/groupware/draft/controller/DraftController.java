package project.spring.groupware.draft.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import project.spring.groupware.draft.domain.ApprovalVO;
import project.spring.groupware.draft.domain.DrafterDTO;
import project.spring.groupware.draft.domain.ReturnDTO;
import project.spring.groupware.draft.persistence.approvalDAO;



/**
 * Handles requests for the application home page.
 */

@Controller
public class DraftController {

	public String App = "";
	public int count = 0;
	public String llll = "";
	public String id = "";
	public String name = "";
	public String dept = "";
	public String approvalno = "";
	public String title = "";
	public String approvalname = "";
	public String content = "";
	public String final_id1 = "a";
	public String final_id2 = "a";
	public String final_id3 = "a";
	public String final_id4 = "a";
	public String final_id5 = "a";
	public static String index = "";
	public int finalize = 0;
	public int final_num = 0;
	public int id_num = 0;
	public String final_idnum = "";
	public String progress = "";
	public String final_id = "";
	public String usedatestart = "";
	public String usedateend = "";
	
	private static final Logger logger = LoggerFactory.getLogger(DraftController.class);
	
	@Autowired
	private approvalDAO dao;
	
	@RequestMapping(value = "draft/register-sample", method = RequestMethod.GET)
	public void sampleGET(String id, Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		id = (String)session.getAttribute("login_id");
		ApprovalVO vo = dao.selectMe(id);
		logger.info(vo.getId());
		
		model.addAttribute("ApprovalVO", vo);
	}
	
	@RequestMapping(value = "draft/register-sample", method = RequestMethod.POST)
	public String samplePOST(ApprovalVO vo, RedirectAttributes attr) {
		
		return "redirect:sample";
	}
	
	@RequestMapping(value = "draft/approval-drafter", method = RequestMethod.GET) // 결재함
	public void approvalDrafterGET(String id, Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		id = (String)session.getAttribute("login_id");
		List<DrafterDTO> list = dao.selectForDrafterId(id);
		if(list != null) {
			model.addAttribute("DrafterDTO", list);
		}
	}
	
	@RequestMapping(value = "draft/approval-drafter", method = RequestMethod.POST) // 결재함
	public String approvalDrafterPOST(ApprovalVO vo, RedirectAttributes attr) {
		
		return "redirect:approval-drafter";
	}
	
	@RequestMapping(value = "draft/approval-return", method = RequestMethod.GET) // 반려함
	public void approvalReturnGET(String id, Model model) {
		
		List<ReturnDTO> list = dao.selectForReturnId(id);
		if(list != null) {
			model.addAttribute("ReturnDTO", list);
		}
	}
	
	@RequestMapping(value = "draft/approval-return", method = RequestMethod.POST) // 반려함
	public String approvalReturnPOST(ApprovalVO vo, RedirectAttributes attr) {
		
		return "redirect:approval-return";
	}
	
	@RequestMapping(value = "draft/approval-finish", method = RequestMethod.GET) // 기결함
	public void approvalFinishGET(String id, Model model) {
		List<DrafterDTO> list = dao.selectForDrafterId(id);
		if(list != null) {
			model.addAttribute("DrafterDTO", list);
		}
	}
	
	@RequestMapping(value = "draft/approval-finish", method = RequestMethod.POST) // 기결함
	public String approvalFinishPOST(ApprovalVO vo, RedirectAttributes attr) {
		
		return "redirect:approval-finish";
	}
	
	
	@RequestMapping(value = "draft/approval-finalizer", method = RequestMethod.GET) // 미결함
	public void approvalFinalizerGET(Model model, HttpServletRequest request) {
		HttpSession session=request.getSession();
		id = (String)session.getAttribute("login_id");
		List<DrafterDTO> list = dao.selectForFinalizerId(id);
		if(list != null) {
			model.addAttribute("DrafterDTO", list);
		}
	}
	
	@RequestMapping(value = "draft/approval-finalizer", method = RequestMethod.POST) // 미결함
	public String approvalFinalizerPOST(ApprovalVO vo, RedirectAttributes attr) {
		
		return "redirect:approval";
	}
	
	
	@RequestMapping(value = "draft/popup-list", method = RequestMethod.GET)
	public void popuplistGET() {
		
	}
	
	@RequestMapping(value = "draft/popup-list", method = RequestMethod.POST)
	public String popuplistPOST() {
		
		return "redirect:popup-list";
	}
	
	@RequestMapping(value = "draft/register-finalizer", method = RequestMethod.GET)
	public void finalizerGET(String draft_index, Model model) {

		ApprovalVO vo = dao.selectAllForReturn(draft_index);
		String final_name1 = dao.selectName1Finalize(draft_index);
		String final_name2 = dao.selectName2Finalize(draft_index);
		String final_name3 = dao.selectName3Finalize(draft_index);
		String final_name4 = dao.selectName4Finalize(draft_index);
		String final_name5 = dao.selectName5Finalize(draft_index);
		List<String> list = new ArrayList<>();
		list.add(final_name1);
		list.add(final_name2);
		list.add(final_name3);
		list.add(final_name4);
		list.add(final_name5);
		model.addAttribute("ApprovalVO", vo);
		model.addAttribute("List", list);
	}
	
	@RequestMapping(value = "draft/register-finalizer", method = RequestMethod.POST)
	public String finalizerPOST() {
		
		return "redirect:register-finalizer";
	}

	
	@RequestMapping(value = "draft/draft-doing", method = RequestMethod.POST)
	public String draftdoingPOST(String draft_index, RedirectAttributes attr) {
		ApprovalVO vo = new ApprovalVO();
			index = draft_index;
			selectAllForReturn();
			if (finalize != 0) {
				finalize--;
				updateFinalizer();
				selectFinalNum();
				updateOrder();
				if (finalize == 0) {
					updateApprovalFinish();
					selectsetFinish();
					makeIdNull();
					vo = new ApprovalVO(id, name, dept, approvalno, null, title, approvalname, "완료", content, null, null, final_id1, final_id2, final_id3, final_id4, final_id5, 0, index, 0, usedatestart, usedateend, id);
					dao.createFinish(vo);
					deleteOrder();
					deleteFinalize();
				}
			}
			return "redirect:approval-finalizer";
		}
	public void selectAllForReturn() { // 반려시킬 값 전부 가져와서 전역변수에 집어넣기
		ApprovalVO vo = dao.selectAllForReturn(index);
			id = vo.getId();
			name = vo.getName();
			dept = vo.getDept();
			approvalno = vo.getApprovalno();
			title = vo.getTitle();
			approvalname = vo.getApprovalname();
			progress = "반려";
			content = vo.getContent();
			final_id1 = vo.getFinal_id1();
			final_id2 = vo.getFinal_id1();
			final_id3 = vo.getFinal_id1();
			final_id4 = vo.getFinal_id1();
			final_id5 = vo.getFinal_id1();
			finalize = vo.getFinalize();
				
	}	
	public void updateFinalizer() {
		ApprovalVO vo = new ApprovalVO();
		vo.setFinalize(finalize);
		vo.setDraft_index(index);
		int result = dao.updateFinalize(vo);
	}
	public void selectFinalNum() {
		
		int result = dao.selectFinalnum(index);
		final_num = result;
		selectFinalizer();
		id_num = final_num - finalize + 1;
		logger.info("id_num : " + id_num);
		if(id_num > final_num) {
			logger.info("크다 커 진짜 크네"); // final
		} else {
			if (id_num == 1) {
				final_idnum = "final_id1";
			} else if (id_num == 2) {
				final_idnum = "final_id2";
			} else if (id_num == 3) {
				final_idnum = "final_id3";
			} else if (id_num == 4) {
				final_idnum = "final_id4";
			} else if (id_num == 5) {
				final_idnum = "final_id5";
			}
		}
		logger.info("결재할 사람 순서: " + final_idnum);
		if(final_idnum != null) {
			selectIdOrder();
		}
	}
	public void selectFinalizer() {
		int result = dao.selectFinalize(index);
		finalize = result;
	}
	public void selectIdOrder() {
		final_id = dao.selectFinalIdOrder(final_idnum, index);
	}
	public void updateOrder() { // 결재해야할 사람 업데이트
		if (final_id != null) {
			int result = dao.updateOrder(final_id, index);
		}
	}
	public void updateApprovalFinish() {
		int result = dao.updateFinishDraft(index);
	}
	public void makeIdNull() {
		if (final_id2 == "a") {
			final_id2 = "";
			final_id3 = "";
			final_id4 = "";
			final_id5 = "";
		} else if (final_id3 == "a") {
			final_id3 = "";
			final_id4 = "";
			final_id5 = "";
		} else if (final_id4 == "a") {
			final_id4 = "";
			final_id5 = "";
		} else if (final_id5 == "a"){
			final_id5 = "";
		}
	}
	private void deleteOrder() {
		int result = dao.deleteOrder(index);
	}
	public void deleteFinalize() {
		int result = dao.deleteFinalize(index);
	}
	public void selectsetFinish() {
		List<ApprovalVO> list = dao.selectFinal_ID(index);
		for(ApprovalVO vo : list) {
			id = vo.getId();
			name = vo.getName();
			dept = vo.getDept();
			approvalno = vo.getApprovalno();
			title = vo.getTitle();
			approvalname = vo.getApprovalname();
			progress = vo.getProgress();
			content = vo.getContent();
			final_id1 = vo.getFinal_id1();
			final_id2 = vo.getFinal_id2();
			final_id3 = vo.getFinal_id3();
			final_id4 = vo.getFinal_id4();
			final_id5 = vo.getFinal_id5();
			usedatestart = vo.getUsedatestart();
			System.out.println(usedatestart);
			usedateend = vo.getUsedateend();			
		}
		finalNullMakeA();
	}
	public void finalNullMakeA() {
		if (final_id2 == null) {
			final_id2 = "a";
			final_id3 = "a";
			final_id4 = "a";
			final_id5 = "a";
		} else if (final_id3 == null) {
			final_id3 = "a";
			final_id4 = "a";
			final_id5 = "a";
		} else if (final_id4 == null) {
			final_id4 = "a";
			final_id5 = "a";
		} else if (final_id5 == null) {
			final_id5 = "a";
		}
	}
	
}
