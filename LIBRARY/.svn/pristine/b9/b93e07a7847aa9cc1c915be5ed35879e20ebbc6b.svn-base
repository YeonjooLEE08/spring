package com.kh.library.member.service;

import java.util.List;

import com.kh.library.book.vo.BookVO;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.BookComplitVO;
import com.kh.library.member.vo.MemberImageVO;
import com.kh.library.member.vo.MemberVO;
import com.kh.library.member.vo.ToReadListVO;

public interface MemberService {
	//----------회원가입---------//
	//아이디 중복 체크
	int checkId (String memId);
	//프로필 이미지 코드
	int selectNextMemImgCode();
	//프로필 이미지 넣기
	void insertMemberImage(MemberImageVO imageVO);
	//회원가입
	void joinMember(MemberVO memberVO);
	
	//-----------로그인-------------//
	//로그인
	MemberVO login(String memId);
	//아이디찾기
	String findId(MemberVO memberVO);
	//비밀번호찾기 : 임시 비번 발송 위한 이메일 조회
	String selectEmail(MemberVO memberVO);
	//임시 비밀번호 설정
	void updateTempPwd(MemberVO memberVO);
	
	//----------마이페이지:정보조회----------//
	//상세 조회
	MemberVO selectMyPageDetail(String memId);
	//정보 수정 - 기본 정보
	void updateBasicInfo(MemberVO memberVO);
				//프로필 이미지 수정
	void updateMemImage(MemberImageVO imageVO);
				//프로필 이미지 수정 x 을 위한 파일명 조회
	String selectMemAtImgName(String memId);
	//보안 정보 수정
	void updateSecretInfo(MemberVO memberVO);
			//현재 비밀번호 확인
	String checkPwd(String memId);
	//추가 정보 수정
	void updatePlusInfo(MemberVO memberVO);
	//탈퇴 위한 비번 체크
	String deletePwdChk(String memId);
	//탈퇴
	void deleteMember(String memId);
	
	//----------마이페이지:북클럽----------//
	//북클럽 조회
	ClubVO selectMyBookClub(String memId);
	
	//북클럽 신청 조회
	ClubApplyVO selectMyBookClubApply(String memId);
	
	//북클럽 신청 취소
	void deleteMyBookClubApply(ClubApplyVO clubApplyVO);
	
	//----------마이페이지:독서플래너----------//
	//조회
	List<BookComplitVO> selectBookPlaner(String memId);
	//조회 for 페이지
	List<BookComplitVO> selectBookPlanerForPage(String memId);
	
	//독서 기록 수 조회
	int selectBookPlanerCnt(BookComplitVO bookComplitVO);
	
	//독서량 상위 백분율
	BookComplitVO selectComplitHighPct(String memId);
	//차트조회
	List<BookComplitVO> selectBookPlanerChart(String memId);
	//취향 순위
	List<BookComplitVO> topThreeBookPlaner(String memId);
	//취향 책 추천
	List<BookComplitVO> selectRecommendBook(String memId);
	//안 읽어본 책 추천
	List<BookComplitVO> selectReadYet(String memId);
	//to-read-list 조회
	List<ToReadListVO> selectToReadList(String memId);
		//추가
	void insertToReadList(ToReadListVO toReadListVO);
		//삭제
	void deleteToReadList(String toReadListCode);
		//isDone
	void updateToReadList(ToReadListVO toReadListVO);
	//상세조회
	BookComplitVO selectBookPlanerDetail(BookComplitVO bookComplitVO);
	//책 검색
	List<BookVO> selectBookPlanerSearch(BookVO bookVO);
	//완독 도서 등록
	void insertBookPlaner(BookVO bookVO);
	//삭제
	void deleteBookPlaner(String complitCode);
	//수정
	void updateBookPlaner(BookComplitVO bookComplitVO);
}
