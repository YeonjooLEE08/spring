package com.kh.library.item.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.item.vo.ItemCategoryVO;
import com.kh.library.item.vo.ItemVO;

@Service("itemService")
public class ItemServiceImpl implements ItemService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ItemCategoryVO> selectItemCategory() {
		return sqlSession.selectList("itemMapper.selectItemCategory");
	}

	@Override
	public List<ItemVO> selectItems(ItemVO itemVO) {
		return sqlSession.selectList("itemMapper.selectItems", itemVO);
	}

	@Override
	public ItemVO selectItemDetail(String itemCode) {
		return sqlSession.selectOne("itemMapper.selectItemDetail",itemCode);
	}

	@Override
	public List<ItemVO> searchItem(ItemVO itemVO) {
		return sqlSession.selectList("itemMapper.searchItem",itemVO);
	}

	@Override
	public int searchItemCnt(ItemVO itemVO) {
		return sqlSession.selectOne("itemMapper.searchItemCnt", itemVO);
	}

	@Override
	public int selcetItemCnt(ItemVO itemVO) {
		return sqlSession.selectOne("itemMapper.selcetItemCnt", itemVO);
	}

}