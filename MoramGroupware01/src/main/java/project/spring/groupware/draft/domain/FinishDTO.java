package project.spring.groupware.draft.domain;

import java.util.Date;

public class FinishDTO {
	private String draft_index;
	private String approvalname;
	private String title;
	private Date draftdate;
	private String aname;
	private String cname;
	private String progress;
	public FinishDTO() {
	}
	public FinishDTO(String draft_index, String approvalname, String title, Date draftdate, String aname, String cname,
			String progress) {
		this.draft_index = draft_index;
		this.approvalname = approvalname;
		this.title = title;
		this.draftdate = draftdate;
		this.aname = aname;
		this.cname = cname;
		this.progress = progress;
	}
	public String getDraft_index() {
		return draft_index;
	}
	public void setDraft_index(String draft_index) {
		this.draft_index = draft_index;
	}
	public String getApprovalname() {
		return approvalname;
	}
	public void setApprovalname(String approvalname) {
		this.approvalname = approvalname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDraftdate() {
		return draftdate;
	}
	public void setDraftdate(Date draftdate) {
		this.draftdate = draftdate;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}

	
}
