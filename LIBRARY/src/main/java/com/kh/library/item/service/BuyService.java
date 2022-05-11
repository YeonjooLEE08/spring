package com.kh.library.item.service;

import java.util.List;

import com.kh.library.item.vo.BuyVO;
import com.kh.library.item.vo.BuyViewVO;
import com.kh.library.item.vo.CartVO;
import com.kh.library.item.vo.OrderSheetVO;
import com.kh.library.member.vo.MemberVO;

public interface BuyService {

	//다음 buyNum 조회
	int selectNextBuyNum();
	
	//바로구매
	void insertBuyAtOnce(BuyVO buyVO);
	
	//장바구니에서 주문하기 클릭시 BUY DB INSERT
	void insertBuys(BuyVO buyVO, CartVO cartVO);
	
	//구매리스트 조회
	List<BuyViewVO> selectBuyViewList(String memId);
	
	//주문하기 결제 완료시
	void insertOrder(OrderSheetVO orderSheetVO);
	
	//다음 orderNum 조회
	String selectNextOrderNum();
	
	//구매자 정보조회
	OrderSheetVO selectOrder(OrderSheetVO orderSheetVO);
	
	//구매시 주소변경
	void updateMemaddr(MemberVO memberVO);
	
}
