package com.kh.library.item.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.item.vo.BuyVO;
import com.kh.library.item.vo.BuyViewVO;
import com.kh.library.item.vo.CartVO;
import com.kh.library.item.vo.OrderSheetVO;
import com.kh.library.member.vo.MemberVO;

@Service("buyService")
public class BuyServiceImpl implements BuyService{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectNextBuyNum() {
		return sqlSession.selectOne("cartMapper.selectNextBuyNum");
	}
	
   @Override 
   @Transactional(rollbackFor = Exception.class) 
   public void insertBuys(BuyVO buyVO, CartVO cartVO) { 
	   sqlSession.insert("cartMapper.insertBuys", buyVO);
	   sqlSession.delete("cartMapper.deleteCarts", cartVO); 
   }

   @Override
   public List<BuyViewVO> selectBuyViewList(String memId) {
	   return sqlSession.selectList("cartMapper.selectBuyViewList", memId);
}

	@Override
	public void insertOrder(OrderSheetVO orderSheetVO) {
		sqlSession.insert("cartMapper.insertOrder", orderSheetVO);
		sqlSession.update("cartMapper.updateOrderNumtoBuy", orderSheetVO);
	}

	@Override
	public String selectNextOrderNum() {
		return sqlSession.selectOne("cartMapper.selectNextorderNum");
	}

	@Override
	public OrderSheetVO selectOrder(OrderSheetVO orderSheetVO) {
		return sqlSession.selectOne("cartMapper.selectOrder", orderSheetVO);
		
	}

	@Override
	public void insertBuyAtOnce(BuyVO buyVO) {
		sqlSession.insert("cartMapper.insertBuyAtOnce", buyVO);
	}

	@Override
	public void updateMemaddr(MemberVO memberVO) {
		sqlSession.update("cartMapper.updateMemaddr", memberVO);
	}
	 

}
