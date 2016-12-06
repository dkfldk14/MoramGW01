package project.spring.groupware.email.domain;

public class EmailVO {

	private int num;
	private String subject;
	private String senddate;
	private String from_email;
	private String content;
	private String to_email;
	private String add_file;
	private int state;
	
	
	public EmailVO() {
		// TODO Auto-generated constructor stub
	}












	public EmailVO(int num, String subject, String senddate, String from_email, String content, String to_email,
			String add_file, int state) {
		this.num = num;
		this.subject = subject;
		this.senddate = senddate;
		this.from_email = from_email;
		this.content = content;
		this.to_email = to_email;
		this.add_file = add_file;
		this.state = state;
	}












	public int getNum() {
		return num;
	}






	public void setNum(int num) {
		this.num = num;
	}






	public String getSubject() {
		return subject;
	}






	public void setSubject(String subject) {
		this.subject = subject;
	}






	public String getSenddate() {
		return senddate;
	}






	public void setSenddate(String senddate) {
		this.senddate = senddate;
	}






	public String getFrom_email() {
		return from_email;
	}






	public void setFrom_email(String from_email) {
		this.from_email = from_email;
	}






	public String getContent() {
		return content;
	}






	public void setContent(String content) {
		this.content = content;
	}






	public String getTo_email() {
		return to_email;
	}






	public void setTo_email(String to_email) {
		this.to_email = to_email;
	}






	public String getAdd_file() {
		return add_file;
	}






	public void setAdd_file(String add_file) {
		this.add_file = add_file;
	}












	public int getState() {
		return state;
	}












	public void setState(int state) {
		this.state = state;
	}






	
		
}


