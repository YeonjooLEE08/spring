package com.kh.library.club.service;

import java.util.List;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;

public interface ClubAdminService {
	//모임 신청회원 조회
	List<ClubApplyVO> selectClubApplyList(ClubApplyVO clubApplyVO);
	
	//모임 수락
	void updateClubAcceptance(ClubApplyVO clubApplyVO);
	void deleteApplyList(ClubApplyVO clubApplyVO);
	
	//클럽멤버리스트 조회
	List<MemberVO> selectClubMemberList(MemberVO memberVO);
	List<MemberVO> selectClubAdminMemberList(MemberVO memberVO);
	
	//모임 강퇴
	void clubMemberKick(MemberVO memberVO);
	
	//북클럽 알림 전송
	void insertClubJoinMessage(MessageVO messageVO);

	void updateAndDeleteClubAcceptance(ClubApplyVO clubApplyVO, String getId);
	
}
