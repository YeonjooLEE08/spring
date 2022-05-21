package com.kh.library.book.service;

import com.kh.library.book.vo.ReserveVO;
import com.kh.library.member.vo.MemberVO;

import java.util.List;

import com.kh.library.book.vo.BookImgVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.HopeBookVO;

public interface BookAdminService {
	
	//연체 도서 업데이트
	void updateOverdue();
	
	//대여 제한 해제 
	void clearLimitDate();


	//책 등록
	void insertBook(BookVO bookVO,BookImgVO bookImgVO );
	
	//책 이미지 정보 등록
	void insertBookImg(BookImgVO bookImgVO);
	
	//책 수정
	void updateBook(BookVO bookVO);
	
	//책 표지 수정
	void updateBkImg(BookImgVO vo);
	
	//수정 시 기존 표지 유지할 때 사용 
	String selectBkAtName(String bookCode);
	
	//isDel 조회
	String selectIsDelete(String bookCode);

	//책 삭제
	void deleteBook(BookVO bookVO);
	
	//다음 이미지 코드 조회
	int selectNextBookImgCode();
	
	//다음 도서 코드 조회
	String selectNextBookCode();
	
	
	
	//추천도서 랭킹 (홈) 
	List<BookVO> selectRcdBook3();
	
	//추천도서 랭킹 더보기
	List<BookVO> selectRcdBook();
	
	//신간도서 select
	List<BookVO> selectNewBook();
	
	
	
	//예약목록 조회
	List<ReserveVO> selectRsvList(ReserveVO reserveVO);
	
	//rtDate 조회(예약제한위해서)
	String selectRtDate(BorrowVO borrowVO);
	
	//멤버별 대여제한 이력 조회
	MemberVO selectLimitDate(MemberVO memberVO);
	
	//예약도서 기간 만료 삭제
	void deleteRsvOverdue();
	
	
	
	//도서 대여
	void borrowBook(ReserveVO reserveVO, MemberVO memberVO);
	
	//대여목록 조회
	List<BorrowVO> selectBrList(BorrowVO borrowVO);
	
	//대여 상태별 조회
	List<BorrowVO> selectBrStatus(BorrowVO borrowVO);
	
	//멤버별 대여목록 조회
	List<BorrowVO> selectBrMember(BorrowVO borrowVO);
	
	
	
	//도서 반납
	void updateReturn(BorrowVO borrowVO, MemberVO memberVO);

	//대여 제한(연체일만큼)
	void updateLimit(MemberVO memberVO);
	
	
	
	//희망도서신청리스트조회
	List<HopeBookVO> selectHopeBookList();
	
	//희망도서분류별조회
	List<HopeBookVO> selectHopeBookListStatus(HopeBookVO hbVO);

	//희망도서 승인
	void updateHopeBook(HopeBookVO hbVO);

	
	//희망도서 카운팅
	int selectHpCnt(HopeBookVO hbVO);
	
	//희망도서 중복 신청 방지
	int selectHpInfo(HopeBookVO hbVO);

	//희망도서 비치 유무 확인
	int selectIsStock(HopeBookVO hbVO);



	


	

	
	

	
	




	

	

	

}
