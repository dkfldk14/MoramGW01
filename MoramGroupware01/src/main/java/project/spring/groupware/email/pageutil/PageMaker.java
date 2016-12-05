package project.spring.groupware.email.pageutil;

public class PageMaker{

	//현재 페이지 번호, 한 페이지에 보여줄 게시글 개수, 만들어논 객체를 사용하기 위해 해당클래스를 변수선언해줌.
	private PaginationCriteria criteria;
	

	//전체 게시글 개수. - 이클래스에서 사용할.
	
	private int totalCount;
	
	//화면에서 보여지는 시작 페이지 링크의 번호가 필요함. 
	private int startPageNum;
	
	//화면에서 보여지는 끝 페이지 링크의 번호가 필요함. 
	private int endPageNum;
	
	//화면에서 보여질 페이지 링크의 개수
	private int numOfPageLink;
	
	//이전, 다음페이지 링크가 있는 지
	private boolean hasPrev;
	
	//다음, 이전페이지 링크가 있는지
	private boolean hasNext;
	
	//페이지 메이커의 생성자를 불러주는데 numOfPageLink=5 로 초기화
	public PageMaker(){
		numOfPageLink=5;
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
		//1페이지라면, 1페이지/5개씩보여주기로햇으니 
		//..(3일때 5,) (4일때, 5).. 데이터는 고려되진 않음. 
		int maxPageLink=(int)Math.ceil((double)totalCount/criteria.getPerPage());				
//		curBlock=(int)Math.ceil((curBlock-1)/numOfPageLink+1);
//		startPageNum=(curBlock-1)*numOfPageLink-1;
		//end 는 5, 10, 15 , 20 .. 
		int temp=(int)(Math.ceil(criteria.getPage()/(double)numOfPageLink)
				*numOfPageLink);
		
		//화면에서 페이지 마지막숫자가 5번이라면, 5-5+1 = 1번이 시작 
		//화며네서 페이지 마지막 숫자가 10번이라면, 10-5+1= 6번이 링크의 시작
		//화면에서 페이지 숫자가 7번이라면 7-5+1= 3번이 시작.??
		
		if(temp<maxPageLink){
			endPageNum=temp;
		}else{
			endPageNum=maxPageLink;
		}
		//START 번호는 링크개수와 관련이 되어 있음.. 
		startPageNum=((endPageNum-1)/numOfPageLink)*numOfPageLink+1;
		
		/*((endPageNum-1)*numOfPageLink+1;
		startPageNum=endPageNum-numOfPageLink +1;*/
		
//		if(endPageNum>=totalCount){
//			
//			endPageNum=totalCount;
//		}else{
//			endPageNum=startPageNum+numOfPageLink-1;
//	
//		}
//		
		
		
				
				
				if(startPageNum==1){
			//링크 시작 번호가 1번이라면, numofPageLink 는 5개가 있을것이고
			//이전이라는 링크는 없어야 함. 
			hasPrev=false;
		}else{
		
			hasPrev=true;
		}
		if(endPageNum*criteria.getPerPage()<totalCount){
			hasNext=true;
		}else{
			hasNext=false;
		}
		
		
		
		
	}
	
	
}