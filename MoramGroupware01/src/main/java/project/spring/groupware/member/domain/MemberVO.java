package project.spring.groupware.member.domain;

public class MemberVO {
	String id;
	String pwd;
	String name;
	String dept;
	String gender;
	String birth;
	String telephone;
	String cellphone;
	String address;
	String email;
	String usertype;
	String mailno;
	String addaddress;
	String groupemail;
	//TODO 사내메일도 입력받아요?
	
	public MemberVO(){}

	public MemberVO(String id, String pwd, String name, String dept, String gender, String birth, String telephone,
			String cellphone, String address, String email, String usertype, String mailno, String addaddress,
			String groupemail) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.dept = dept;
		this.gender = gender;
		this.birth = birth;
		this.telephone = telephone;
		this.cellphone = cellphone;
		this.address = address;
		this.email = email;
		this.usertype = usertype;
		this.mailno = mailno;
		this.addaddress = addaddress;
		this.groupemail = groupemail;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getCellphone() {
		return cellphone;
	}

	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getMailno() {
		return mailno;
	}

	public void setMailno(String mailno) {
		this.mailno = mailno;
	}

	public String getAddaddress() {
		return addaddress;
	}

	public void setAddaddress(String addaddress) {
		this.addaddress = addaddress;
	}

	public String getGroupemail() {
		return groupemail;
	}

	public void setGroupemail(String groupemail) {
		this.groupemail = groupemail;
	}

	
	
}
