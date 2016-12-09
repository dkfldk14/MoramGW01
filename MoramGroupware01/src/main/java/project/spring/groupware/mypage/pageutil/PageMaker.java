package project.spring.groupware.mypage.pageutil;

import project.spring.groupware.board.searchutil.SearchCriteria;

//������ ��ȣ�� ���� ��ũ�� ����� ���� Ŭ����

public class PageMaker {
	//page와 perPage를 가지고 오기 위한 변수 선언
	private PaginationCriteria criteria;
	
	//search 기능을 가지고 오기 위한 변수
	private SearchCriteria searchCriteria;
	
	//mypage에서 페이징을 하귀 이한 변수
	private PaginationCriteria_userid criteria_userid;
	
	//전체 게시글 개수
	private int totalCount;
	
	//화면에서 보여지는 시작페이지 링크의 번호
	private int startPageNum;
	
	//화면에서 보여지는 끝페이지 링크의 번호
	private int endPageNum;
	
	//화면에서 보여질 페이지 링크의 개수
	private int numOfPageLink;
	
	//이전, 다음 페이지 링크가 있는지
	private boolean hasPrev;
	private boolean hasNext;
	
	public PageMaker(){
		numOfPageLink = 5; // 한 페이지에 5개를 보여주도록 설정
		
	}

	//리스트 페이지에서 단일 게시글 클릭하면 페이징, 검색 정보를 가지고 URI 문자열을 만들어서 조회페이지로 이동
	//조회페이지에서 페이징, 검색정보를 유지하고 있기 때문에 다시 리스트 페이지로 이동할 때 원래 page와 검색 조건의 리스트로 이동할 수 있다.
	
	/*public String makeSearch(int page){
		UriComponents uriComponents =
				UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPage", criteria.getPerPage())
				.queryParam("searchType", searchCriteria.getSearchType())
				.queryParam("keyword", searchCriteria.getKeyword())
				.build();
		
		return uriComponents.toUriString();
	}*/
	
	
	
	
	public SearchCriteria getSearchCriteria() {
		return searchCriteria;
	}
	
	public PaginationCriteria_userid getCriteria_userid() {
		return criteria_userid;
	}

	public void setCriteria_userid(PaginationCriteria_userid criteria_userid) {
		this.criteria_userid = criteria_userid;
	}

	public void setSearchCriteria(SearchCriteria searchCriteria) {
		this.searchCriteria = searchCriteria;
	}
	
	
	public PaginationCriteria getCriteria() {
		return criteria;
	}

	


	public int getTotalCount() {
		return totalCount;
	}


	public int getStartPageNum() {
		return startPageNum;
	}



	public int getEndPageNum() {
		return endPageNum;
	}



	public int getNumOfPageLink() {
		return numOfPageLink;
	}



	public boolean isHasPrev() {
		return hasPrev;
	}



	public boolean isHasNext() {
		return hasNext;
	}

	public void setCriteria(PaginationCriteria criteria){
		this.criteria=criteria;
	}
	
	public void setTotalCount(int totalCount){
		this.totalCount=totalCount;
	}
	
	public void setPageDate(){
		int maxPageLink =
				(int)Math.ceil(totalCount/(double)criteria.getPerPage());
		int temp = 
				(int)(Math.ceil(criteria.getPage()/(double)numOfPageLink)*numOfPageLink);
		
		if(temp<maxPageLink){
			endPageNum = temp;
			
		}else{
			endPageNum = maxPageLink;
		}
		
		startPageNum = (endPageNum - 1)/ numOfPageLink*numOfPageLink+1;
		
		if(startPageNum == 1){
			hasPrev = false;
		}else{
			hasPrev = true;
		}
		
		if(endPageNum * criteria.getPerPage() < totalCount){
			hasNext = true;
		}else{
			hasNext = false;
		}
		
	}
	
	public void setSearchPageDate(){
		int maxPageLink =
				(int)Math.ceil(totalCount/(double)searchCriteria.getPerPage());
		int temp = 
				(int)(Math.ceil(searchCriteria.getPage()/(double)numOfPageLink)*numOfPageLink);
		
		if(temp<maxPageLink){
			endPageNum = temp;
			
		}else{
			endPageNum = maxPageLink;
		}
		
		startPageNum = (endPageNum - 1)/ numOfPageLink*numOfPageLink+1;
		
		if(startPageNum == 1){
			hasPrev = false;
		}else{
			hasPrev = true;
		}
		
		if(endPageNum * searchCriteria.getPerPage() < totalCount){
			hasNext = true;
		}else{
			hasNext = false;
		}
		
	}

	public void setMyPageDate(){
		int maxPageLink =
				(int)Math.ceil(totalCount/(double)criteria_userid.getPerPage());
		int temp = 
				(int)(Math.ceil(criteria_userid.getPage()/(double)numOfPageLink)*numOfPageLink);
		
		if(temp<maxPageLink){
			endPageNum = temp;
			
		}else{
			endPageNum = maxPageLink;
		}
		
		startPageNum = (endPageNum - 1)/ numOfPageLink*numOfPageLink+1;
		
		if(startPageNum == 1){
			hasPrev = false;
		}else{
			hasPrev = true;
		}
		
		if(endPageNum * criteria_userid.getPerPage() < totalCount){
			hasNext = true;
		}else{
			hasNext = false;
		}
		
	}
	
	
	
}
