package com.kh.library.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.library.board.vo.NtBoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public String selectNextNtCode() {
		return sqlSession.selectOne("boardMapper.selectNextNtCode");
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void insertNtBoard(NtBoardVO ntBoardVO){
			sqlSession.insert("boardMapper.insertNtBoard",ntBoardVO);
	}
	
	@Override
	public List<NtBoardVO> selectNtBoardList(){
		return sqlSession.selectList("boardMapper.selectNtBoard");
	}
	
	@Override
	public NtBoardVO selectNtBoardDetail(NtBoardVO ntBoardVO){
		return sqlSession.selectOne("boardMapper.selectNtBoardDetail",ntBoardVO);
	}
	
	@Override
	public void updateNtBoardDetail(NtBoardVO ntBoardVO) {
		sqlSession.update("boardMapper.updateNtBoardDetail", ntBoardVO);
	}
	
	@Override
	public void deleteNtBoardDetail(String ntCode) {
		sqlSession.delete("boardMapper.deleteNtBoardDetail",ntCode);
	}

	@Override
	public void updateNtBoardRdCnt(String ntCode) {
		sqlSession.update("boardMapper.updateNtBoardRdCnt",ntCode);
		
	}

	@Override
	public List<NtBoardVO> selectSearchNt(NtBoardVO ntBoardVO) {
		return sqlSession.selectList("boardMapper.selectSearchNt",ntBoardVO);
	}

}
