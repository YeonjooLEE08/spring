package com.kh.library.club.service;

import java.util.List;

import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubBoardCmtVO;
import com.kh.library.club.vo.ClubBoardVO;
import com.kh.library.club.vo.ClubImageVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;

public interface ClubService {
	
	//모임생성 + 클럽어드민 부여
	void insertUpdateClubCreate(ClubVO clubVO, ClubImageVO clubImageVO);
	
	//모임조회
	List<ClubVO> selectClubList(ClubVO clubVO);
	
	//모임상세조회
	ClubVO selectClubDetail(String clubCode);
	
	//모임정보수정
	void updateClubDetail(ClubVO clubVO);
	
	//모임게시판 등록
	void insertClubBoard(ClubBoardVO clubBoardVO);
	
	//모임게시글 조회
	List<ClubBoardVO> selectClubBoardList(ClubBoardVO clubBoardVO);
	
	//모임 게시글 검색
	List<ClubBoardVO> selectSearhClubBoardList(ClubBoardVO clubBoardVO);
	
	//모임게시글 상세조회
	ClubBoardVO selectClubBoardDetail(ClubBoardVO clubBoardVO);
	
	//모임게시글 수정
	void updateClubBoardDetail(ClubBoardVO clubBoardVO);
	
	//게시글 삭제
	void deleteClubBoard(ClubBoardVO clubBoardVO);

	//클럽어드민 클럽코드 수정
	void updateClubAdminClubCode(ClubVO clubVO);
	
	//댓글등록
	void insertRegBoardCmt(ClubBoardCmtVO clubBoardCmtVO);
	
	//댓글조회
	List<ClubBoardCmtVO> selectCbCmtList(ClubBoardCmtVO clubBoardCmtVO);
	
	//댓글수정
	void updateCbCmt(ClubBoardCmtVO clubBoardCmtVO);
	
	//댓삭
	void deleteCbCmt(ClubBoardCmtVO clubBoardCmtVO);
	
	//모입 가입
	void insertClubJoin(ClubApplyVO clubApplyVO);
	
	//모임퇴출
	void clubMemberKick(MemberVO memberVO);
	
	//클럽멤버리스트 조회
	List<MemberVO> selectClubMemberList(MemberVO memberVO);
	
	//클럽게시판 글 수 조회
	int selectClubBoardListCnt(ClubBoardVO clubBoardVO);
	
	//북클럽 개수 조회
	int selectClubListCnt(ClubVO clubVO);
	
	//마이페이지 북클럽신청 조회
	ClubApplyVO selectMyBookClubApply(String memId);
	
	//신청취소
	void deleteMyBookClubApply(String memId);
	
	//조회수
	void updateCbReadCnt(ClubBoardVO clubBoardVO);
	
	//완독수 조회
	int selectBookClubMemComplitBook(MemberVO memberVO);
	
	//클럽승인코드
	String selectClubApplyCode(String memId);
	
	//클럽 이미지코드
	int selectNextClubImgCode();
	
	//클럽코드
	String selectNextClubCode();
	
	//책 표지 수정
	void updateClubImage(ClubImageVO vo);
	
	//수정 시 기존 표지 유지할 때 사용 
	String selectCbAtName(String clubCode);	
	
	//공지사항 조회
	List<ClubBoardVO> selectNoticBoardList(ClubBoardVO clubBoardVO);
	
	//랭킹
	List<MemberVO> selectRanking(String clubCode);
	
	//클럽명 중복검사
	int clubNameCheck(String clubName)throws Exception;
	
	/////////////////////////알림함/////////////////////////////
	
	//알림 갯수
	int selectMsgCount(String getId);
	
	//알림 읽음 업데이트
	void updateMsgIsRead(String msgCode);
	
	//클럽승인코드
	void updateClubApplyCode(ClubApplyVO clubApplyVO);
	
	//알림 삭제
	void deleteMsg(String msgCode);
}
