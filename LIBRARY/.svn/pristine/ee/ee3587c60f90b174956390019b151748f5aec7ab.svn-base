package com.kh.library.board.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.library.board.service.BoardService;
import com.kh.library.board.vo.NtBoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name = "boardService")
	private BoardService boardService;
	
	//공지사항 글 작성 폼
	@GetMapping("/ntBoardWrite")
	public String ntBoardWrite() {
		
		return "board/nt_board_write";
	}
	
	//공지사항 글 등록
	@PostMapping("/regNtBoard")
	public String insertNtBoard(Model model, NtBoardVO ntBoardVO) {
		String nextNtCode = boardService.selectNextNtCode();
		ntBoardVO.setNtCode(nextNtCode);
		boardService.insertNtBoard(ntBoardVO);
		return "redirect:/board/ntBoardList";
	}
	
	//공지사항 리스트
	@GetMapping("/ntBoardList")
	public String selectNtBoardList(Model model) {
		model.addAttribute("ntBoardList", boardService.selectNtBoardList());
		return "board/nt_board_list";
	}
	
	//공지사항 검색
	@RequestMapping("/searchNt")
	public String selectSearchNt(Model model, NtBoardVO ntBoardVO) {
		model.addAttribute("ntBoardList", boardService.selectSearchNt(ntBoardVO));
		return "board/nt_board_list";
	}
	
	//공지사항 상세 조회
	@GetMapping("/ntBoardDetail")
	public String selectNtBoardDetail(Model model , NtBoardVO ntBoardVO, String ntCode) {
		boardService.updateNtBoardRdCnt(ntCode);
		model.addAttribute("ntBoard", boardService.selectNtBoardDetail(ntBoardVO));
		return "board/nt_board_detail";
	}
	//공지사항 수정 폼
	@GetMapping("/updateNtBoardForm")
	public String updateNtBoard(Model model, NtBoardVO ntBoardVO) {
		model.addAttribute("ntBoard", boardService.selectNtBoardDetail(ntBoardVO));
		return "board/nt_board_detail_update";
	}
	
	//공지사항 글 수정
	@PostMapping("/updateNtBoardDetail")
	public String updateNtBoardDetail(NtBoardVO ntBoardVO) {
		boardService.updateNtBoardDetail(ntBoardVO);
		return "redirect:/board/ntBoardList";
	}
	
	//공지사항 글 삭제
	@GetMapping("/deleteNtBoardDetail")
	public String deleteNtBoardDetail(String ntCode) {
		boardService.deleteNtBoardDetail(ntCode);
		
		return "redirect:/board/ntBoardList";
	}


}
