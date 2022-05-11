package com.kh.library.item.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.item.vo.BuyVO;
import com.kh.library.item.vo.CartVO;
import com.kh.library.item.vo.CartViewVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertCart(CartVO cartVO) {
		sqlSession.insert("cartMapper.insertCart", cartVO);
	}

	@Override
	public List<CartViewVO> selectCart(String memId) {
		return sqlSession.selectList("cartMapper.selectCartList", memId);
	}

	@Override
	public void deleteCart(CartVO cartVO) {
		sqlSession.delete("cartMapper.deleteCart", cartVO);
	}

	@Override
	public void updateCartCnt(CartVO cartVO) {
		sqlSession.update("cartMapper.updateCartCnt", cartVO);
		
	}

	@Override
	public void deleteCarts(CartVO cartVO) {
		sqlSession.delete("cartMapper.deleteCarts", cartVO);
	}

	@Override
	public void deleteAllCart(String memId) {
		sqlSession.delete("cartMapper.deleteAllCart", memId);
	}
	
	@Override
	@Transactional(rollbackFor = Exception.class) 
	public void deleteBuys(CartVO cartVO, String memId) {
		sqlSession.insert("cartMapper.reinsertCart", cartVO);
		sqlSession.delete("cartMapper.deleteBuys", memId);
	}

	@Override
	public int selectNextCartNum() {
		return sqlSession.selectOne("cartMapper.selectNextCartNum");
	}
	
	
}
