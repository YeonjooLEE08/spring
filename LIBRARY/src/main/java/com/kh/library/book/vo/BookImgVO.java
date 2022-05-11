package com.kh.library.book.vo;

import java.util.List;

public class BookImgVO {
	
	private int bkImgCode;
	private String bkOriginName;
	private String bkAtName;
	private String bookCode;
	private List<BookImgVO> bookImgList;
	
	public int getBkImgCode() {
		return bkImgCode;
	}
	public void setBkImgCode(int bkImgCode) {
		this.bkImgCode = bkImgCode;
	}
	public String getBkOriginName() {
		return bkOriginName;
	}
	public void setBkOriginName(String bkOriginName) {
		this.bkOriginName = bkOriginName;
	}
	public String getBkAtName() {
		return bkAtName;
	}
	public void setBkAtName(String bkAtName) {
		this.bkAtName = bkAtName;
	}
	public String getBookCode() {
		return bookCode;
	}
	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}
	public List<BookImgVO> getBookImgList() {
		return bookImgList;
	}
	public void setBookImgList(List<BookImgVO> bookImgList) {
		this.bookImgList = bookImgList;
	}
	
	


	
	
}
