package project.spring.groupware.mypage.searchutil;

import project.spring.groupware.board.pageuitl.PaginationCriteria;

public class SearchCriteria extends PaginationCriteria{
	private String searchType;
	private String keyword;
	
	public SearchCriteria(){}
	
	public SearchCriteria(String searchType, String keyword) {
		super();
		this.searchType = searchType;
		this.keyword = keyword;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	@Override
	public String toString() {
		
		return "SearchCriteria [searchType =" + searchType + ", keyword=" + keyword + "]";
	}
		
}
