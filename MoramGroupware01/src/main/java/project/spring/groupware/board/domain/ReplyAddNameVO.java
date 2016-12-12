package project.spring.groupware.board.domain;

import java.util.Date;

public class ReplyAddNameVO {

	private int rno;
	private int bno;
	private String rtext;
	private String rname;
	private String replier;
	private String profileimage;
	private Date regdate;
	
	public ReplyAddNameVO(){}

	public ReplyAddNameVO(int rno, int bno, String rtext, String rname, String replier,String profileimage, Date regdate) {
		super();
		this.rno = rno;
		this.bno = bno;
		this.rtext = rtext;
		this.rname = rname;
		this.replier = replier;
		this.profileimage=profileimage;
		this.regdate = regdate;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getRtext() {
		return rtext;
	}

	public void setRtext(String rtext) {
		this.rtext = rtext;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getReplier() {
		return replier;
	}

	public void setReplier(String replier) {
		this.replier = replier;
	}
	
	public String getProfileimage(){
		return profileimage;
	}
	
	public void setProfileimage(String profileimage){
		this.profileimage=profileimage;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
	
}
