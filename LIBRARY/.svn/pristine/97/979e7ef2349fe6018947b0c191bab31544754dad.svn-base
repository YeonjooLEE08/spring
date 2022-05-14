package com.kh.library.admin.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.item.vo.ItemCategoryVO;
import com.kh.library.item.vo.ItemImgVO;
import com.kh.library.item.vo.ItemVO;
@Service("itemAdminService")
@Repository
public class ItemAdminServiceImpl implements ItemAdminService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertItem(ItemVO itemVO, ItemImgVO itemImgVO) {
		sqlSession.insert("itemMapper.insertItem", itemVO);
		sqlSession.insert("itemMapper.insertItemImg", itemImgVO);
	}

	@Override
	public int selectNextItemImgCode() {
		return sqlSession.selectOne("itemMapper.NextImgCode");
	}

	@Override
	public String selectNextItemCode() {
		return sqlSession.selectOne("itemMapper.NextItemCode");
	}

	@Override
	public void insertItemCate(ItemCategoryVO itemCategoryVO) {
		sqlSession.insert("itemMapper.insertCategory",itemCategoryVO);
		
	}

	@Override
	public String selectNextItemCateCode() {
		return sqlSession.selectOne("itemMapper.NextItemCateCode");
	}

	@Override
	public void updateCategory(ItemCategoryVO itemCategoryVO) {
		sqlSession.update("itemMapper.updateCategory",itemCategoryVO);	
	}

	@Override
	public void deleteCategory(String cateCode) {
		sqlSession.delete("itemMapper.deleteCategory",cateCode);
	}
	@Override
	public void updateIsDelete(ItemCategoryVO itemCategoryVO) {
		sqlSession.update("itemMapper.updateIsDelete", itemCategoryVO);
	}

	@Override
	public void updateIsDeleteItem(ItemVO itemVO) {
		sqlSession.update("itemMapper.updateIsDeleteItem", itemVO);
	}

	@Override
	public void updateIsDeleteItems(ItemVO itemVO) {
		sqlSession.update("itemMapper.updateIsDeleteItems", itemVO);
	}

	@Override
	public void updateItem(ItemVO itemVO) {
		sqlSession.update("itemMapper.updateItem", itemVO);
		
	}

	@Override
	public void insertItemImges(ItemImgVO itemImgVO) {
		sqlSession.insert("itemMapper.insertItemImg", itemImgVO);
	}

	@Override
	public void updateItemImg(ItemImgVO itemImgVO) {
		sqlSession.delete("itemMapper.deleteItemImgAll", itemImgVO);
		sqlSession.insert("itemMapper.insertItemImg", itemImgVO);
	}



	

	

}
