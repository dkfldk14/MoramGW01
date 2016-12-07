package project.spring.groupware.draft.domain;

import java.sql.Date;

public class ApprovalVO {
	private String id;
	private String name;
	private String dept;
	private String approvalno;
	private Date draftdate;
	private String title;
	private String approvalname;
	private String progress;
	private String content;
	private Date returndate;
	private Date enddate;
	private String final_id1;
	private String final_id2;
	private String final_id3;
	private String final_id4;
	private String final_id5;
	private int finalize;
	private String draft_index;
	private int final_num;
	private String usedatestart;
	private String usedateend;
	private String final_id;
	
	
	public ApprovalVO() {}
	
	public ApprovalVO(String id, String name, String dept, String approvalno, Date draftdate, String title,
			String approvalname, String progress, String content, Date returndate, Date enddate, String final_id1,
			String final_id2, String final_id3, String final_id4, String final_id5, int finalize, String draft_index, int final_num,
			String usedatestart, String usedateend, String final_id) {
		this.id = id;
		this.name = name;
		this.dept = dept;
		this.approvalno = approvalno;
		this.draftdate = draftdate;
		this.title = title;
		this.approvalname = approvalname;
		this.progress = progress;
		this.content = content;
		this.returndate = returndate;
		this.enddate = enddate;
		this.final_id1 = final_id1;
		this.final_id2 = final_id2;
		this.final_id3 = final_id3;
		this.final_id4 = final_id4;
		this.final_id5 = final_id5;
		this.finalize = finalize;
		this.draft_index = draft_index;
		this.final_num = final_num;
		this.usedatestart = usedatestart;
		this.usedateend = usedateend;
		this.final_id = final_id;
	}
	
	public String getFinal_id() {
		return final_id;
	}

	public void setFinal_id(String final_id) {
		this.final_id = final_id;
	}

	public String getId() {
		return id;
	}
	public String getUsedatestart() {
		return usedatestart;
	}

	public void setUsedatestart(String usedatestart) {
		this.usedatestart = usedatestart;
	}

	public String getUsedateend() {
		return usedateend;
	}

	public void setUsedateend(String usedateend) {
		this.usedateend = usedateend;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getApprovalno() {
		return approvalno;
	}
	public void setApprovalno(String approvalno) {
		this.approvalno = approvalno;
	}
	public Date getDraftdate() {
		return draftdate;
	}
	public void setDraftdate(Date draftdate) {
		this.draftdate = draftdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getpprovalname() {
		return approvalname;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReturndate() {
		return returndate;
	}
	public void setReturndate(Date returndate) {
		this.returndate = returndate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public String getFinal_id1() {
		return final_id1;
	}
	public void setFinal_id1(String final_id1) {
		this.final_id1 = final_id1;
	}
	public String getFinal_id2() {
		return final_id2;
	}
	public void setFinal_id2(String final_id2) {
		this.final_id2 = final_id2;
	}
	public String getFinal_id3() {
		return final_id3;
	}
	public void setFinal_id3(String final_id3) {
		this.final_id3 = final_id3;
	}
	public String getFinal_id4() {
		return final_id4;
	}
	public void setFinal_id4(String final_id4) {
		this.final_id4 = final_id4;
	}
	public String getFinal_id5() {
		return final_id5;
	}
	public void setFinal_id5(String final_id5) {
		this.final_id5 = final_id5;
	}
	public int getFinalize() {
		return finalize;
	}
	public void setFinalize(int finalize) {
		this.finalize = finalize;
	}

	public String getApprovalname() {
		return approvalname;
	}

	public void setApprovalname(String approvalname) {
		this.approvalname = approvalname;
	}

	public String getDraft_index() {
		return draft_index;
	}

	public void setDraft_index(String draft_index) {
		this.draft_index = draft_index;
	}

	public int getFinal_num() {
		return final_num;
	}

	public void setFinal_num(int final_num) {
		this.final_num = final_num;
	}
		
}

