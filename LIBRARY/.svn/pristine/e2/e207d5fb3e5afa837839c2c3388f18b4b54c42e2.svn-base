package com.kh.library.admin.service;

import com.kh.library.item.vo.ItemCategoryVO;
import com.kh.library.item.vo.ItemImgVO;
import com.kh.library.item.vo.ItemVO;

public interface ItemAdminService {
	//상품등록
	void insertItem(ItemVO itemVO, ItemImgVO itemImgVO);
	
	//상품이미지정보등록
	void insertItemImges(ItemImgVO itemImgVO);
	
	//다음 이미지코드 조회
	int selectNextItemImgCode();
	
	//다음 아이템코드 조회
	String selectNextItemCode();
	
	//상품카테고리등록
	void insertItemCate(ItemCategoryVO itemCategoryVO);
	
	//다음 상품카테고리코드 조회
	String selectNextItemCateCode();
	
	//상품카테고리 수정
	void updateCategory(ItemCategoryVO itemCategoryVO);
	
	//상품카테고리 삭제상태변경
	void updateIsDelete(ItemCategoryVO itemCategoryVO);
	
	//상품카테고리 완전삭제
	void deleteCategory(String cateCode);
	
	//아이템 삭제상태변경
	void updateIsDeleteItem(ItemVO itemVO);
	
	//아이템 완전삭제
	void deleteItem(ItemVO itemVO);
	
	//아이템 선택 삭제상태변경
	void updateIsDeleteItems(ItemVO itemVO);
	
	//아이템 선택 삭제
	void deleteItems(ItemVO itemVO);
	
	//아이템 수정
	void updateItem(ItemVO itemVO);
	
	//아이템이미지 수정
	public void updateItemImgs(ItemImgVO itemImgVO);
}
