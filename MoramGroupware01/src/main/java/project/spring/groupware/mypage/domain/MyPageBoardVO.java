package project.spring.groupware.mypage.domain;

import java.util.Date;

public class MyPageBoardVO {
	private int bno;
	private int rn;
	private String title;
	private String content;
	private String userid;
	private Date regdate;
	private int replycnt;
	private int viewcnt;
	private int code;
	
	public MyPageBoardVO(){}
	
	public MyPageBoardVO(int bno, int rn, String title, String content, String userid, Date regdate, int replycnt, int viewcnt,
			int code) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.userid = userid;
		this.regdate = regdate;
		this.replycnt = replycnt;
		this.viewcnt = viewcnt;
		this.code = code;
	}

	
	
	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getReplycnt() {
		return replycnt;
	}

	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
	
	
	
	
	
	
}
