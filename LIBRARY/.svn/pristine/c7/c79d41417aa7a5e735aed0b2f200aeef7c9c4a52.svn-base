package com.kh.library.club.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.club.service.ClubAdminService;
import com.kh.library.club.service.MessageService;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.club.vo.MonthlyBookVO;
import com.kh.library.member.vo.MemberVO;

import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/clubAdmin")
public class ClubAdminController {
	@Resource(name = "clubAdminService")
	private ClubAdminService clubAdminService;
	
	@Resource(name = "messageService")
	private MessageService messageService;

	//클럽관리
	@GetMapping("/clubAdmin")
	public String clubAdmin(ClubApplyVO clubApplyVO, Model model, MemberVO memberVO) {
		model.addAttribute("clubMemList", clubAdminService.selectClubAdminMemberList(memberVO));
		model.addAttribute("applyList", clubAdminService.selectClubApplyList(clubApplyVO));
		return "club/club_manage";
	}
	
	//클럽수락
	@ResponseBody
	@PostMapping("/clubJoinAcceptance")
	public void clubJoinAcceptance(ClubApplyVO clubApplyVO) {
		String getId = clubApplyVO.getMemId();
		clubAdminService.updateAndDeleteClubAcceptance(clubApplyVO, getId);
		
	}
	
	//거절
	@ResponseBody
	@PostMapping("/clubJoinRejection")
	public void clubJoinRejection(ClubApplyVO clubApplyVO) {
		clubAdminService.deleteApplyList(clubApplyVO);
	}
	
	//모임강퇴
	@ResponseBody
	@PostMapping("/clubMemKick")
	public void clubMemKick(MemberVO memberVO) {
		clubAdminService.clubMemberKick(memberVO);
	}
	
	//이달의 책 등록페이지
	@GetMapping("/monthlyBook")
	public String monthlyBook() {
		return "club/club_monthly_book";
	}
	
	//이달의책 등록
	@PostMapping("/regMonthlyBook")
	public String regMonthlyBook(MonthlyBookVO monthlyBookVO) {
		clubAdminService.insertMonthlyBook(monthlyBookVO);
		return "redirect:/club/clubDetail?clubCode=" + monthlyBookVO.getClubCode();
	}
	
	//이달의 책 수정페이지
	@GetMapping("/monthlyBookUpdate")
	public String monthlyBookUpdate(Model model, String clubCode) {
		model.addAttribute("monthlyBk", clubAdminService.selectMonthlyBook(clubCode));
		return "club/update_club_monthly_book";
	}
	
	//이달의책 수정
	@PostMapping("/UpdateMonthlyBook")
	public String UpdateMonthlyBook(String clubCode) {
		clubAdminService.updateMonthlyBook(clubCode);
		return "redirect:/club/clubDetail";
	}
	
	
	
}
