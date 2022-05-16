package com.kh.library.board.vo;

import org.springframework.web.multipart.MultipartFile;

public class NtBoardVO {
	private String ntCode;
	private String ntTitle;
	private String ntContent;
	private String memId;
	private String memName;
	private String ntCreateDate;
	private String ntRdCnt;
	private String searchSub;
	private int rowNum;
	private String fileName;
	private String fileExt;
	private MultipartFile uploadFile;
	
	
	
	
	
	public String getFileExt() {
		return fileExt;
	}
	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getRowNum() {
		return rowNum;
	}
	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}
	public String getSearchSub() {
		return searchSub;
	}
	public void setSearchSub(String searchSub) {
		this.searchSub = searchSub;
	}
	private String searchTxt;
	
	
	public String getNtRdCnt() {
		return ntRdCnt;
	}
	public void setNtRdCnt(String ntRdCnt) {
		this.ntRdCnt = ntRdCnt;
	}
	public String getSearchTxt() {
		return searchTxt;
	}
	public void setSearchTxt(String searchTxt) {
		this.searchTxt = searchTxt;
	}
	public String getNtCode() {
		return ntCode;
	}
	public void setNtCode(String ntCode) {
		this.ntCode = ntCode;
	}
	public String getNtTitle() {
		return ntTitle;
	}
	public void setNtTitle(String ntTitle) {
		this.ntTitle = ntTitle;
	}
	public String getNtContent() {
		return ntContent;
	}
	public void setNtContent(String ntContent) {
		this.ntContent = ntContent;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getNtCreateDate() {
		return ntCreateDate;
	}
	public void setNtCreateDate(String ntCreateDate) {
		this.ntCreateDate = ntCreateDate;
	}
	
	
	
}
