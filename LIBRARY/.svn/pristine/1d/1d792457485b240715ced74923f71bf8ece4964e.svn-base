package com.kh.library.admin.service;

import java.util.List;

import javax.mail.Message;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.member.vo.MemberVO;

public interface MemberAdminService {
	
	//회원 조회
	List<MemberAdminService> selectMemberList(MemberVO memberVO);
	
	//메세지 전송
	void insertSendMessage(MessageVO messageVO);
	
	//회원 검색
	List<MemberVO> selectSearchMember(MemberVO memberVO);
	
	//회원수
	int selectAllMemberCount(MemberVO memberVO);
	
	//클럽수락 메세지
	void insertClubJoinMessage(MessageVO messageVO);
	
	//희망도서 메세지
	void insertHopeBookMessage(MessageVO messageVO);
	
	//대여정보
	List<BorrowVO> selectBorrowBookInfo(String memId);
	
	//예약정보
	List<ReserveVO> selectReserveBookInfo(String memId);
	
	//알림전송내역
	List<MessageVO> selectSendMessageList();
	
	//알림상세보기
	MessageVO selectSendMessageDetail(String msgCode);
	
	//예약제한일
	String selectLimitDate(String memId);
	
}
