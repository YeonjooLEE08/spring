package com.kh.library.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.board.vo.FreeBoardCmtVO;
import com.kh.library.board.vo.FreeBoardVO;

@Service("freeBoardService")
public class FreeBoardServiceImpl implements FreeBoardService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertFreeBoard(FreeBoardVO freeBoardVO) {
		sqlSession.insert("otherboardMapper.insertFreeBoard", freeBoardVO);
	}

	@Override
	public List<FreeBoardVO> selectFreeBoardList(FreeBoardVO freeBoardVO) {
		return sqlSession.selectList("otherboardMapper.selectFreeBoardList", freeBoardVO);
	}

	@Override
	public String nextFreeBoardNum() {
		return sqlSession.selectOne("otherboardMapper.nextFreeBoardNum");
	}

	@Override
	public void updateFreeBoardReadCnt(String boardNum) {
		sqlSession.update("otherboardMapper.updateFreeBoardReadCnt", boardNum);
	}

	@Override
	public FreeBoardVO selectFreeBoardDetail(String boardNum) {
		return sqlSession.selectOne("otherboardMapper.selectFreeBoardDetail", boardNum);
	}

	@Override
	public void updateFreeBoard(FreeBoardVO freeBoardVO) {
		sqlSession.update("otherboardMapper.updateFreeBoard", freeBoardVO);
	}

	@Override
	public void deleteFreeBoard(String boardNum) {
		sqlSession.delete("otherboardMapper.deleteFreeBoard", boardNum);
	}

	@Override
	public List<FreeBoardVO> searchFreeBoard(FreeBoardVO freeBoardVO) {
		return sqlSession.selectList("otherboardMapper.selectSearch", freeBoardVO);
	}

	@Override
	public List<FreeBoardCmtVO> selectFreeBoardCmt(String boardNum) {
		return sqlSession.selectList("otherboardMapper.selectFreeBoardCmt", boardNum);
	}

	@Override
	public int selectNextFrCmtNum() {
		return sqlSession.selectOne("otherboardMapper.selectNextFrCmtNum");
	}

	@Override
	public void insertFrBoardCmt(FreeBoardCmtVO freeBoardCmtVO) {
		sqlSession.insert("otherboardMapper.insertFrBoardCmt", freeBoardCmtVO);
	}

	@Override
	public void updateFreeBoardCmt(FreeBoardCmtVO freeBoardCmtVO) {
		sqlSession.update("otherboardMapper.updateFreeBoardCmt", freeBoardCmtVO);
	}

	@Override
	public void deleteFreeBoardCmt(int commentNum) {
		sqlSession.delete("otherboardMapper.deleteFreeBoardCmt", commentNum);
	}

	@Override
	public int selectBoardCnt(FreeBoardVO freeBoardVO) {
		return sqlSession.selectOne("otherboardMapper.selectBoardCnt", freeBoardVO);
	}

	
	
	
}
