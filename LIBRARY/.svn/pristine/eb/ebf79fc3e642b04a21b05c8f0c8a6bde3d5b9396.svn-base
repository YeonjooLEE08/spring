package com.kh.library.board.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.library.board.vo.QnaAnswerVO;
import com.kh.library.board.vo.QnaVO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public void insertQna(QnaVO qnaVO) {
		sqlSession.insert("otherboardMapper.insertQna", qnaVO);
	}

	@Override
	public String selectNextQnaNum() {
		return sqlSession.selectOne("otherboardMapper.selectNextQnaNum");
	}

	@Override
	public List<QnaVO> selectQnaList(QnaVO qnaVO) {
		return sqlSession.selectList("otherboardMapper.selectQnaList", qnaVO);
	}

	@Override
	public void updateQnaPw(QnaVO qnaVO) {
		sqlSession.update("otherboardMapper.updateQnaPw", qnaVO);
	}

	@Override
	public String checkQnaPw(QnaVO qnaVO) {
		return sqlSession.selectOne("otherboardMapper.checkQnaPw", qnaVO);
	}

	@Override
	public QnaVO selectQnaDetail(QnaVO qnaVO) {
		sqlSession.update("otherboardMapper.updateQnaReadCnt", qnaVO);
		return sqlSession.selectOne("otherboardMapper.selectQnaDetail", qnaVO);
	}

	@Override
	public String selectNextAnswerNum() {
		return sqlSession.selectOne("otherboardMapper.selectNextAnswerNum");
	}

	@Override
	public void insertQnaAnswer(QnaAnswerVO qnaAnswerVO) {
		sqlSession.insert("otherboardMapper.insertQnaAnswer", qnaAnswerVO);
	}

	@Override
	public List<QnaAnswerVO> selectQnaAnswer(QnaVO qnaVO) {
		return sqlSession.selectList("otherboardMapper.selectQnaAnswer", qnaVO);
	}

	@Override
	public void updateisAnswered(QnaVO qnaVO) {
		sqlSession.update("otherboardMapper.updateisAnswered", qnaVO);
	}

	@Override
	public void updateQnaAnswer(QnaAnswerVO qnaAnswerVO) {
		sqlSession.update("otherboardMapper.updateQnaAnswer", qnaAnswerVO);
	}

	@Override
	public void deleteQnaAnswer(QnaAnswerVO qnaAnswerVO) {
		sqlSession.delete("otherboardMapper.deleteQnaAnswer", qnaAnswerVO);
	}

	@Override
	public List<QnaVO> selectSearchQna(QnaVO qnaVO) {
		return sqlSession.selectList("otherboardMapper.selectSearchQna", qnaVO);
	}

	@Override
	public void updateQna(QnaVO qnaVO) {
		sqlSession.update("otherboardMapper.updateQna", qnaVO);
	}

	@Override
	public void qnaDelete(QnaVO qnaVO) {
		sqlSession.delete("otherboardMapper.qnaDelete", qnaVO);
	}

	
}
