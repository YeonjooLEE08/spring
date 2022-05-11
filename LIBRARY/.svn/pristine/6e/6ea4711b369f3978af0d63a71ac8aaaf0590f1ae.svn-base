package com.kh.library.board.service;

import java.util.List;

import com.kh.library.board.vo.FreeBoardCmtVO;
import com.kh.library.board.vo.FreeBoardVO;

public interface FreeBoardService {
	
	//자유게시판 글갯수 조회
	int selectBoardCnt(FreeBoardVO freeBoardVO);

	//다음 게시판 번호 조회
	String nextFreeBoardNum();

	//자유게시판 등록
	void insertFreeBoard(FreeBoardVO freeBoardVO);
	
	//자유게시판 조회
	List<FreeBoardVO> selectFreeBoardList(FreeBoardVO freeBoardVO);
	
	//자유게시판 조회수
	void updateFreeBoardReadCnt(String boardNum);
	
	//자유게시판 상세조회
	FreeBoardVO selectFreeBoardDetail(String boardNum);
	
	//자유게시판 수정
	void updateFreeBoard(FreeBoardVO freeBoardVO);
	
	//자유게시판 삭제
	void deleteFreeBoard(String boardNum);
	
	//자유게시판 검색
	List<FreeBoardVO> searchFreeBoard(FreeBoardVO freeBoardVO);
	
	//자유게시판 댓글 조회
	List<FreeBoardCmtVO> selectFreeBoardCmt(String boardNum);
	
	//자유게시판 댓글 다음번호 조회
	int selectNextFrCmtNum();
	
	//자유게시판 댓글 입력
	void insertFrBoardCmt(FreeBoardCmtVO freeBoardCmtVO);
	
	//자유게시판 댓글 수정
	void updateFreeBoardCmt(FreeBoardCmtVO freeBoardCmtVO);
	
	//자유게시판 댓글 삭제
	void deleteFreeBoardCmt(int commentNum);
}
