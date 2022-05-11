package com.kh.library.item.service;

import java.util.List;

import com.kh.library.item.vo.OrderSheetVO;

public interface SalesService {

	//주문내역조회
	List<OrderSheetVO> selectOrderAll();
	
	//주문상품 건별 상태변경
	void updateItemState(OrderSheetVO orderSheetVO);
	
	//주문상품 선택상품 상태변경
	void updateItemsStates(OrderSheetVO orderSheetVO);
	
	//선택주문 내역 삭제
	void deleteOrders(OrderSheetVO orderSheetVO);
	
	//아이템 배송상태별 주문내역조회
	List<OrderSheetVO> searchKindState(OrderSheetVO orderSheetVO);
	
	//주문내역 기간별 조회
	List<OrderSheetVO> searchStatePeriod(OrderSheetVO orderSheetVO);
	
	//주문내역 키워드 검색
	List<OrderSheetVO> searchOrderState(OrderSheetVO orderSheetVO);
	
	//매출 일별조회
	OrderSheetVO selectSalesDay();
	
	//매출 이번주 조회
	OrderSheetVO selectSalesWeek();
	
	//매출 이번달 조회
	OrderSheetVO selectSalesMonth();
	
	//매출 올해 조회
	OrderSheetVO selectSalesYear();
	
	//금일 주문상태별 매출현황
	OrderSheetVO selectSalesItemStateDay(String itemState);
	
	//매출기간별 그래프 조회
	List<OrderSheetVO> selcetSalesPeriod(OrderSheetVO orderSheetVO);
}
