package project.spring.groupware.member.domain;

public class MainCheckVO {
	String id;
	String enter;
	String leave;
	String attendance;
	int statetime;
	int score;
	String to_char;
	
	
	public MainCheckVO(){}
	
	public MainCheckVO(String id, String enter, String leave, String attendance, int statetime, int score, String to_char) {
		this.id = id;
		this.enter = enter;
		this.leave = leave;
		this.attendance = attendance;
		this.statetime = statetime;
		this.score = score;
		this.to_char = to_char;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEnter() {
		return enter;
	}

	public void setEnter(String enter) {
		this.enter = enter;
	}

	public String getLeave() {
		return leave;
	}

	public void setLeave(String leave) {
		this.leave = leave;
	}

	public String getAttendance() {
		return attendance;
	}

	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}

	public int getStatetime() {
		return statetime;
	}

	public void setStatetime(int statetime) {
		this.statetime = statetime;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getTo_char() {
		return to_char;
	}

	public void setTo_char(String to_char) {
		this.to_char = to_char;
	}
	
	

}
