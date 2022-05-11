package com.kh.library.item.service;

import java.util.List;

import com.kh.library.item.vo.BuyViewVO;
import com.kh.library.item.vo.OrderSheetVO;

public interface OrderService {

	//주문 상세페이지 조회- 구매목록
	List<BuyViewVO> paymentComplitList(OrderSheetVO orderSheetVO);
	
	//주문 상세페이지 조회- 주문자정보조회
	OrderSheetVO buyerInfo(OrderSheetVO orderSheetVO);
	
	//구매내역조회
	List<BuyViewVO> purchaseDetails(OrderSheetVO orderSheetVO);
	
	//구매번호조회
	List<OrderSheetVO> selectOrderNum(OrderSheetVO orderSheetVO);
	
	//구매내역 기간조회
	List<OrderSheetVO> selectOrderPeriod(OrderSheetVO orderSheetVO);
}
