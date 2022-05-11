package com.kh.library.member.vo;

import com.kh.library.book.vo.BookCategoryVO;
import com.kh.library.book.vo.BookVO;

public class BookComplitVO {
	private String complitCode;
	private String complitDate;
	private String bookCode;
	private String memId;
	private String complitReview;
	private int cnt;
	private BookVO bookInfo;
	private BookCategoryVO cateInfo;

	
	
	
	
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public BookCategoryVO getCateInfo() {
		return cateInfo;
	}
	public void setCateInfo(BookCategoryVO cateInfo) {
		this.cateInfo = cateInfo;
	}
	public String getComplitReview() {
		return complitReview;
	}
	public void setComplitReview(String complitReview) {
		this.complitReview = complitReview;
	}
	public BookVO getBookInfo() {
		return bookInfo;
	}
	public void setBookInfo(BookVO bookInfo) {
		this.bookInfo = bookInfo;
	}
	public String getComplitCode() {
		return complitCode;
	}
	public void setComplitCode(String complitCode) {
		this.complitCode = complitCode;
	}
	public String getComplitDate() {
		return complitDate;
	}
	public void setComplitDate(String complitDate) {
		this.complitDate = complitDate;
	}
	public String getBookCode() {
		return bookCode;
	}
	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
	
}
