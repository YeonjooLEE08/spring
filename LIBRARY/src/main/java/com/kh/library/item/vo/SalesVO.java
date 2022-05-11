package com.kh.library.item.vo;

public class SalesVO {

	private String orderDate;
	private int salesCnt;
	private int totalPrice;
	private SalesVO[] salesVOs;
	
	public SalesVO[] getSalesVOs() {
		return salesVOs;
	}
	public void setSalesVOs(SalesVO[] salesVOs) {
		this.salesVOs = salesVOs;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getSalesCnt() {
		return salesCnt;
	}
	public void setSalesCnt(int salesCnt) {
		this.salesCnt = salesCnt;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
