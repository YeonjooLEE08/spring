package com.kh.library.book.vo;

import java.util.List;

public class HopeBookApplyVO {
	private String hopeApplyCode;
	private int hopeStatus;
	
	
	public String getHopeApplyCode() {
		return hopeApplyCode;
	}
	public void setHopeApplyCode(String hopeApplyCode) {
		this.hopeApplyCode = hopeApplyCode;
	}
	public int getHopeStatus() {
		return hopeStatus;
	}
	public void setHopeStatus(int hopeStatus) {
		this.hopeStatus = hopeStatus;
	}
	public List<HopeBookVO> getHopeBookList() {
		return hopeBookList;
	}
	public void setHopeBookList(List<HopeBookVO> hopeBookList) {
		this.hopeBookList = hopeBookList;
	}
	private List<HopeBookVO> hopeBookList;
}
