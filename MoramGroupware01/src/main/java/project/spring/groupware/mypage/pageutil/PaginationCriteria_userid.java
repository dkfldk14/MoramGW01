package project.spring.groupware.mypage.pageutil;

public class PaginationCriteria_userid extends PaginationCriteria {

	private String userid;

	public PaginationCriteria_userid(){}
	
	public PaginationCriteria_userid(String userid) {
		super();
		this.userid = userid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	
	
}
