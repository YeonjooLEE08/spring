package com.kh.library.board.service;

import java.util.List;


import com.kh.library.board.vo.NtBoardVO;

public interface BoardService {

	//다음 ntCode 조회
	String selectNextNtCode();
	
	//공지사항 등록
	void insertNtBoard(NtBoardVO ntBoardVO);
	
	//공지사항 조회
	List<NtBoardVO> selectNtBoardList(NtBoardVO ntBoardVO);
	
	//공지사항 상세조회
	NtBoardVO selectNtBoardDetail(NtBoardVO ntBoardVO);
	
	//공지사항 글 검색
	List<NtBoardVO> selectSearchNt(NtBoardVO ntBoardVO);
	
	//조회수 업데이트
	void updateNtBoardRdCnt(String ntCode);
	
	//공지사항 수정
	void updateNtBoardDetail(NtBoardVO ntBoardVO);
	
	//공지사항 삭제
	void deleteNtBoardDetail(String ntCode);

	//공지사항 페이징 
	int selectBoardCnt(NtBoardVO ntBoardVO);
	
	//공지사항 검색 페이징 
	int selectBoardSearchCnt(NtBoardVO ntBoardVO);
}