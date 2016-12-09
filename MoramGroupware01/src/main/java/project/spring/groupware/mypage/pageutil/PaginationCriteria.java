package project.spring.groupware.mypage.pageutil;

public class PaginationCriteria {
	private int page;
	private int perPage;
	
	public PaginationCriteria(){
		page = 1;
		perPage = 5;
		
	}
	
	public PaginationCriteria(int page, int perPage){
		this.page=page;
		this.perPage=perPage;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPerPage() {
		return perPage;
	}

	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
	//board-mapper 에서 #{start}, #{end}값으로 세팅하기 위해서
	//한 페이지에 5개씩 보여진다고 가정하면
	//1 페이지 : 1~5
	
	public int getStart(){
		int start = (page -1) * perPage + 1;
		return start;
	}
	
	public int getEnd(){
		int end =page*perPage;
		return end;
	}
	
}
