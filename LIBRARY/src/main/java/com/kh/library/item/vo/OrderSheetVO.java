package com.kh.library.item.vo;

public class OrderSheetVO {

	private String orderNum;
	private String buyDate;
	private String toName;
	private String toAddr;
	private String toTell;
	private String memId;
	private String payCode;
	private int totalPrice;
	private String deliMsg;
	private String inputSDate;
	private String inputEDate;
	private String itemState;
	private String memName;
	private String[] orderNums;
	private String sort;
	private String keyword;
	private int orderCnt;
	private OrderSheetVO[] orderSheetVOs;
	
	
	public OrderSheetVO[] getOrderSheetVOs() {
		return orderSheetVOs;
	}
	public void setOrderSheetVOs(OrderSheetVO[] orderSheetVOs) {
		this.orderSheetVOs = orderSheetVOs;
	}
	public int getOrderCnt() {
		return orderCnt;
	}
	public void setOrderCnt(int orderCnt) {
		this.orderCnt = orderCnt;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String[] getOrderNums() {
		return orderNums;
	}
	public void setOrderNums(String[] orderNums) {
		this.orderNums = orderNums;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getItemState() {
		return itemState;
	}
	public void setItemState(String itemState) {
		this.itemState = itemState;
	}
	public String getInputSDate() {
		return inputSDate;
	}
	public void setInputSDate(String inputSDate) {
		this.inputSDate = inputSDate;
	}
	public String getInputEDate() {
		return inputEDate;
	}
	public void setInputEDate(String inputEDate) {
		this.inputEDate = inputEDate;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}
	public String getToName() {
		return toName;
	}
	public void setToName(String toName) {
		this.toName = toName;
	}
	public String getToAddr() {
		return toAddr;
	}
	public void setToAddr(String toAddr) {
		this.toAddr = toAddr;
	}
	public String getToTell() {
		return toTell;
	}
	public void setToTell(String toTell) {
		this.toTell = toTell;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getPayCode() {
		return payCode;
	}
	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}
	public String getDeliMsg() {
		return deliMsg;
	}
	public void setDeliMsg(String deliMsg) {
		this.deliMsg = deliMsg;
	}
	
	
}
