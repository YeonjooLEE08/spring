package com.kh.library.book.service;

import java.util.List;

import com.kh.library.book.vo.BookCategoryVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.HopeBookVO;
import com.kh.library.book.vo.RecommendVO;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.member.vo.MemberVO;

public interface BookService {
	//카테고리목록조회
	List<BookCategoryVO> selectBookCategory();
	
	//도서 목록 조회
	List<BookVO> selectBookList();
	
	//도서 검색결과 조회
	List<BookVO> selectSearchList(BookVO bookVO);
	
	//도서 상세 조회
	BookVO selectBookDetail(BookVO bookVO);
	
	//도서 추천 기록 조회
	RecommendVO selectRcdInfo(RecommendVO rcdVO);
	
	//도서 추천 
	void updateRcdCnt(BookVO bookVO);
	
	//예약 권한 조회
	MemberVO selectRsvInfo(MemberVO memberVO);
	
	//중복예약방지 
	String selectRsvCode(ReserveVO reserveVO);
	
	//대출시예약방지
	String selectBrCode(BorrowVO borrowVO);
	
	//도서 예약 기능
	void reserve(BookVO bookVO, MemberVO memberVO);
	
	//유저 예약 도서 조회
	List<ReserveVO> selectRsvUser(ReserveVO reserveVO);
	
	//유저 예약 취소
	void deleteReserve(ReserveVO reserveVO,MemberVO memberVO);

	
	//유저 대여 목록 조회
	List<BorrowVO> selectBrUser(BorrowVO borrowVO);
	
	
	//희망도서 신청 기능
	void insertHopeBook(HopeBookVO hbVO);
	
	
	//유저 희망도서 목록 조회
	List<HopeBookVO> selectHpUser(HopeBookVO hbVO);

	//유저 희망도서 상태별 조회
	List<HopeBookVO> selectHpStatusUser(HopeBookVO hbVO);

	
	

	
}
