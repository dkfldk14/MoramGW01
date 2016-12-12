package project.spring.groupware.email.pageutil;

public class NewPaginationCriteria extends PaginationCriteria {

	
	private String from_email;
	
	public NewPaginationCriteria(){}

	public NewPaginationCriteria(String from_email) {
		super();
		//this.state = state;
		this.from_email = from_email;
	}

	/*public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}*/

	public String getFrom_email() {
		return from_email;
	}

	public void setFrom_email(String from_email) {
		this.from_email = from_email;
	}
	
	
	
}
