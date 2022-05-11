package com.kh.library.club.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.club.service.ClubService;
import com.kh.library.club.service.MessageService;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubBoardCmtVO;
import com.kh.library.club.vo.ClubBoardVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;
import com.kh.library.util.vo.PageVO;


@Controller
@RequestMapping("/club")
public class ClubController {
	@Resource(name = "clubService")
	private ClubService clubService;

	@Resource(name = "messageService")
	private MessageService messageService;
	
	//북클럽 목록 조회
	@GetMapping("/clubList")
	public String clubList(Model model, HttpSession session, ClubVO clubVO, MemberVO memberVO) {
		
		if(session.getAttribute("loginInfo") != null) {
			String getId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			
			model.addAttribute("msgCnt", clubService.selectMsgCount(getId));
			model.addAttribute("clubApplyCode", clubService.selectClubApplyCode(memId));
		}
		
		model.addAttribute("clubList", clubService.selectClubList(clubVO));
		
		return "club/club_list1";
	}
	
	//북클럽 생성페이지 이동
	@GetMapping("/clubCreate")
	public String clubCreate() {
		return "club/club_create";
	}
	//북클럽 생성
	@PostMapping("/clubCreate")
	public String clubCreate(ClubVO clubVO) {
		clubService.insertUpdateClubCreate(clubVO);
		return "redirect:/club/clubList";
	}
	//북클럽 상세조회 + 검색
	@RequestMapping("/clubDetail")
	public String clubDetail(Model model, String clubCode, MemberVO memberVO, PageVO pageVO, ClubBoardVO clubBoardVO) {
		
		//-----------------페이징 정보 세팅
		//1.전체 데이터의 개수 조회
		int listCnt = clubService.selectClubBoardListCnt(clubBoardVO);
		clubBoardVO.setTotalCnt(listCnt);
		
		//2.페이징 처리를 위한 세팅 메소드 호출
		clubBoardVO.setPageInfo();
		
		//클럽 상세조회
		model.addAttribute("club", clubService.selectClubDetail(clubCode));
		//클럽 게시판 조회
		model.addAttribute("boardList", clubService.selectClubBoardList(clubBoardVO));
		//클럽 회원리스트
		model.addAttribute("memList", clubService.selectClubMemberList(memberVO));
		
		return "club/club_detail";
	}
	
	//북클럽 수정페이지 이동
	@GetMapping("/clubDetailUpdate")
	public String clubDetailUpdateWrite(String clubCode, Model model) {
		model.addAttribute("club", clubService.selectClubDetail(clubCode));
		return "club/club_detail_update";
	}
	//북클럽 수정
	@PostMapping("/clubDetailUpdate")
	public String clubDetailUpdate(ClubVO clubVO, Model model, String clubCode, RedirectAttributes redirectAttributes) {
		clubService.updateClubDetail(clubVO);
		redirectAttributes.addAttribute("clubCode", clubCode);
		return "redirect:/club/clubDetail";
	}
	//북클럽게시판 글쓰기 페이지 이동
	@GetMapping("/clubBoardWrite")
	public String clubBoardWrite(String clubCode, Model model) {
		model.addAttribute("clubCode", clubCode);
		return "club/club_board_write";
	}
	//게시글 등록
	@PostMapping("/regClubBoard")
	public String regClubBoard(ClubBoardVO clubBoardVO, String clubCode, RedirectAttributes redirectAttributes) {
		clubService.insertClubBoard(clubBoardVO);
		redirectAttributes.addAttribute("clubCode", clubCode);
		return "redirect:/club/clubDetail";
	}
	//게시글 상세조회 + 댓글조회
	@GetMapping("/clubBoardDetail")
	public String clubBoardDetail(Model model, ClubBoardVO clubBoardVO, ClubBoardCmtVO clubBoardCmtVO) {
		model.addAttribute("clubBoard", clubService.selectClubBoardDetail(clubBoardVO));
		
		model.addAttribute("cbCmtList", clubService.selectCbCmtList(clubBoardCmtVO));
		
		return "club/club_board_detail";
	}
	
	//댓글조회
	@ResponseBody
	@PostMapping("/cbCmtList")
	public List<ClubBoardCmtVO> cbCmtList(ClubBoardCmtVO clubBoardCmtVO) {
		return clubService.selectCbCmtList(clubBoardCmtVO);
	}
	
	//게시글 수정 페이지 이동
	@GetMapping("/clubBoardUpdate")
	public String clubBoardUpdate(Model model, ClubBoardVO clubBoardVO) {
		model.addAttribute("clubBoard", clubService.selectClubBoardDetail(clubBoardVO));
		return "club/club_board_detail_update";
	}
	//게시글 수정
	@PostMapping("/clubBoardUpdate")
	public String clubBoardDetailUpdate(ClubBoardVO clubBoardVO, String cbBoardNum, RedirectAttributes redirectAttributes, String clubCode) {
		clubService.updateClubBoardDetail(clubBoardVO);
		redirectAttributes.addAttribute("clubCode", clubCode);
		redirectAttributes.addAttribute("cbBoardNum", cbBoardNum);
		return "redirect:/club/clubBoardDetail";
	}
	
	//게시글 삭제
	@GetMapping("/clubBoardDelete")
	public String clubBoardDelete(ClubBoardVO clubBoardVO, RedirectAttributes redirectAttributes, String clubCode) {
		clubService.deleteClubBoard(clubBoardVO);
		redirectAttributes.addAttribute("clubCode", clubCode);
		return "redirect:/club/clubDetail";
	}
	
	//댓등록
	@PostMapping("/clubBoardRegCmt")
	public String clubBoardRegCmt(ClubBoardCmtVO clubBoardCmtVO, String cbBoardNum, String clubCode) {
		clubService.insertRegBoardCmt(clubBoardCmtVO);
		return "redirect:/club/clubBoardDetail?cbBoardNum=" + cbBoardNum + "&&clubCode=" + clubCode;
	}
	
	//댓글 수정
	@PostMapping("/clubCmtUpdate")
	public String clubCmtUpdate(ClubBoardCmtVO clubBoardCmtVO, String cbBoardNum, String clubCode) {
		clubService.updateCbCmt(clubBoardCmtVO);
		return "redirect:/club/clubBoardDetail?cbBoardNum=" + cbBoardNum + "&&clubCode=" + clubCode;
	}
	
	//댓글 삭제
	@ResponseBody
	@PostMapping("/deleteCbCmt")
	public void deleteCbCmt(ClubBoardCmtVO clubBoardCmtVO) {
		clubService.deleteCbCmt(clubBoardCmtVO);
	}
	
	//모임가입페이지로 이동
	@GetMapping("/clubJoinWrite")
	public String clubJoinWrite(String clubCode, Model model) {
		model.addAttribute("club", clubService.selectClubDetail(clubCode));
		return "club/club_join";
	}
	
	//모임 가입
	@PostMapping("/clubJoin")
	public String clubJoin(ClubApplyVO clubApplyVO) {
		clubService.insertClubJoin(clubApplyVO);
		return "redirect:/club/clubList";
	}
	
	//-------------------------알림함--------------------------
	@GetMapping("/getMsgList")
	public String getMsgList(Model model, HttpServletRequest request) {
		String getId = request.getParameter("getId");

		model.addAttribute("msgList", messageService.selectGetMsgList(getId));
		return "club/message";
	}
	@ResponseBody
	@PostMapping("/getMsgList")
	public List<MessageVO> getMsgList1(Model model, HttpSession session) {
		String getId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		return messageService.selectGetMsgList(getId);
	}
	
	//알림읽음 표시
	@ResponseBody
	@PostMapping("/updateMsgIsRead")
	public void updateMsgIsRead(String msgCode) {
		clubService.updateMsgIsRead(msgCode);
	}
	
}
