package com.kh.library.item.service;

import java.util.List;

import com.kh.library.item.vo.ItemCategoryVO;
import com.kh.library.item.vo.ItemVO;

public interface ItemService {
	//카테고리 목록 조회
	List<ItemCategoryVO> selectItemCategory();
	
	//굿즈 목록 조회
	List<ItemVO> selectItems(ItemVO itemVO);
	
	//굿즈 상세정보 조회
	ItemVO selectItemDetail(String itemCode);
	
	//굿즈 검색
	List<ItemVO> searchItem(String keyword);
	
	//굿즈 검색 갯수조회
	int searchItemCnt(String keyword);
	
}
