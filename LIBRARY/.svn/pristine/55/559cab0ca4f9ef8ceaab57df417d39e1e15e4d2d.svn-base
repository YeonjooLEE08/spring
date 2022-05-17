package com.kh.library.util.vo;

public class PageVO {
	private int nowPage;//현재 선택된 페이지 번호
	private int totalCnt;//전체 데이터 수
	private int beginPage;//화면에 보이는 첫 페이지
	private int endPage;//화면에 보이는 마지막 페이지
	private int displayCnt;//한 화면에 보여지는 게시글 수 
	private int displayPageCnt;//한 화면에 보여지는 페이지 수
	private boolean prev;//이전 버튼 유무
	private boolean next;//다음 버튼 유무
	private int startNum;//시작 row_num
	private int endNum;//마지막 row_num
	
	public PageVO() {
		nowPage = 1;
		displayCnt = 8;
		displayPageCnt = 5;
	}

	public int getDisplayCnt() {
		return displayCnt;
	}

	public void setDisplayCnt(int displayCnt) {
		this.displayCnt = displayCnt;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getTotalCnt() {
		return totalCnt;
	}

	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	public int getBeginPage() {
		return beginPage;
	}

	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getStartNum() {
		return startNum;
	}

	public void setStartNum() {
		this.startNum = (nowPage - 1) * displayCnt + 1;
	}

	public int getEndNum() {
		return endNum;
	}

	public void setEndNum() {
		this.endNum = nowPage * displayCnt;
	}
	
	//페이징 처리를 위한 모든 데이터를 세팅
	public void setPageInfo() {
		//화면에 보이는 마지막 페이지 번호 세팅
		endPage = (int)(Math.ceil(nowPage / (double)displayPageCnt)) * displayPageCnt ;
		
		//화면에 보이는 첫 페이지 번호 세팅
		beginPage  =  endPage - displayPageCnt + 1;
		
		//전체 페이지 수 세팅
		int totalPageCnt = (int)(Math.ceil(this.totalCnt / (double)displayCnt));
				
		//next버튼 유무 세팅
		if(endPage < totalPageCnt) {
			next = true;
		}
		else {
			next = false;
			endPage = totalPageCnt;
		}
		
		//이번 버튼 유무 세팅
		prev = beginPage == 1 ? false : true;
		
		setStartNum();
		setEndNum();
	}
}
