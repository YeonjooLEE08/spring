package com.kh.library.item.service;

import java.util.List;

import com.kh.library.item.vo.CartVO;
import com.kh.library.item.vo.CartViewVO;

public interface CartService {

	//카트 insert
	void insertCart(CartVO cartVO);
	
	//장바구니 조회
	List<CartViewVO> selectCart(String memId);
	
	//장바구니 건별 삭제
	void deleteCart(CartVO cartVO);
	
	//장바구니 수량 변경
	void updateCartCnt(CartVO cartVO);
	
	//장바구니 선택삭제
	void deleteCarts(CartVO cartVO);
	
	//장바구니 비우기
	void deleteAllCart(String memId);
	
	//주문하기에서 구매취소시 장바구니 insert
	void deleteBuys(CartVO cartVO, String memId);
	
	//다음 장바구니 CART_NUM 조회
	int selectNextCartNum();
}
