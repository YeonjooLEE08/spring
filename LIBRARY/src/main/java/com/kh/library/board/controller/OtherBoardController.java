package com.kh.library.board.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.library.board.service.FreeBoardService;
import com.kh.library.board.service.QnaService;
import com.kh.library.board.vo.FreeBoardCmtVO;
import com.kh.library.board.vo.FreeBoardVO;
import com.kh.library.board.vo.QnaAnswerVO;
import com.kh.library.board.vo.QnaVO;
import com.kh.library.member.vo.MemberVO;

@Controller
@RequestMapping("/otherB")
public class OtherBoardController {
	
	@Resource(name = "freeBoardService")
	private FreeBoardService freeBoardService;
	
	@Resource(name = "qnaService")
	private QnaService qnaService;

	//자유게시판 리스트 조회
	@GetMapping("/freeBoard")
	public String freeBoardList(Model model, FreeBoardVO freeBoardVO) {
		//-----------------페이징 정보 세팅
		//1.전체 데이터의 개수 조회
		int listCnt = freeBoardService.selectBoardCnt(freeBoardVO);
		freeBoardVO.setTotalCnt(listCnt);
		
		//2.페이징 처리를 위한 세팅 메소드 호출
		freeBoardVO.setPageInfo();
		
		model.addAttribute("BoardList", freeBoardService.selectFreeBoardList(freeBoardVO));
		
		return "board/free_board_list";
	}
	
	//자유게시판 검색
	@PostMapping("/searchFreeBoard")
	public String searchFreeBoard(Model model, FreeBoardVO freeBoardVO) {
		
		//-----------------페이징 정보 세팅
		//1.전체 데이터의 개수 조회
		int listCnt = freeBoardService.selectBoardCnt(freeBoardVO);
		freeBoardVO.setTotalCnt(listCnt);
		
		//2.페이징 처리를 위한 세팅 메소드 호출
		freeBoardVO.setPageInfo();
		
		model.addAttribute("BoardList", freeBoardService.searchFreeBoard(freeBoardVO));		
		return "board/free_board_list";
	}
	
	
	//자유게시판 등록 양식 이동
	@GetMapping("/regFreeBoard")
	public String insertFreeBoardForm() {
		return "board/free_board_reg";
	}
	
	//자유게시판 등록
	@PostMapping("/regFreeBoard")
	public String insertFreeBoard(FreeBoardVO freeBoardVO, HttpSession session) {
		String nextBoardNum = freeBoardService.nextFreeBoardNum();
		String memId =((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		freeBoardVO.setMemId(memId);
		String memName =((MemberVO)(session.getAttribute("loginInfo"))).getMemName();
		freeBoardVO.setMemName(memName);
		freeBoardVO.setBoardNum(nextBoardNum);
		freeBoardService.insertFreeBoard(freeBoardVO);
		return "redirect:/otherB/freeBoard";
	}
	
	//자유게시판 상세보기
	@GetMapping("/selectFreeBoardDetail")
	public String selectFreeBoardDetail(String boardNum, Model model) {
		freeBoardService.updateFreeBoardReadCnt(boardNum);
		model.addAttribute("board",freeBoardService.selectFreeBoardDetail(boardNum));
		model.addAttribute("cmtList",freeBoardService.selectFreeBoardCmt(boardNum));
		return "board/free_board_detail";
	}
	
	//자유게시판 수정페이지이동
	@GetMapping("/updateFreeBoard")
	public String updateFreeBoardForm(String boardNum, Model model) {
		freeBoardService.updateFreeBoardReadCnt(boardNum);
		model.addAttribute("board",freeBoardService.selectFreeBoardDetail(boardNum));
		return "board/free_board_update";
	}
	
	//자유게시판 수정
	@PostMapping("/updateFreeBoard")
	public String updateFreeBoard(FreeBoardVO freeBoardVO) {
		freeBoardService.updateFreeBoard(freeBoardVO);
		String boardNum = freeBoardVO.getBoardNum();
		return "redirect:/otherB/selectFreeBoardDetail?boardNum="+boardNum;
	}
	
	//자유게시판 삭제
	@GetMapping("/deleteFreeBoard")
	public String deleteFreeBoard(String boardNum) {
		freeBoardService.deleteFreeBoard(boardNum);
		return "redirect:/otherB/freeBoard";
	}
	
	//자유게시판 댓글작성
	@PostMapping("/regFreeBoardCmt")
	public String regFreeBoardCmt(FreeBoardCmtVO freeBoardCmtVO, HttpSession session) {
		String memId =((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		freeBoardCmtVO.setMemId(memId);
		
		String memName =((MemberVO)(session.getAttribute("loginInfo"))).getMemName();
		freeBoardCmtVO.setMemName(memName);
		
		String memImage =((MemberVO)(session.getAttribute("loginInfo"))).getMemImage();
		freeBoardCmtVO.setMemImage(memImage);
		
		int commentNum = freeBoardService.selectNextFrCmtNum();
		freeBoardCmtVO.setCommentNum(commentNum);
		
		freeBoardService.insertFrBoardCmt(freeBoardCmtVO);
		
		String boardNum = freeBoardCmtVO.getBoardNum();
		return "redirect:/otherB/selectFreeBoardDetail?boardNum="+boardNum;
	}
	
	//자유게시판 댓글 수정
	@PostMapping("/updateFreeCmt")
	public String updateFreeCmt(FreeBoardCmtVO freeBoardCmtVO) {
		String boardNum = freeBoardCmtVO.getBoardNum();
		freeBoardService.updateFreeBoardCmt(freeBoardCmtVO);
		return "redirect:/otherB/selectFreeBoardDetail?boardNum="+boardNum;
	}
	
	//자유게시판 댓글 삭제
	@GetMapping("/deleteFreeCmt")
	public String deleteFreeCmt(FreeBoardCmtVO freeBoardCmtVO) {
		String boardNum = freeBoardCmtVO.getBoardNum();
		freeBoardService.deleteFreeBoardCmt(freeBoardCmtVO.getCommentNum());
		return "redirect:/otherB/selectFreeBoardDetail?boardNum="+boardNum;
	}
	
	
	//Q&A페이지 이동
	@GetMapping("/qnaBoard")
	public String qnaBoardList(Model model) {
		model.addAttribute("qnaList", qnaService.selectQnaList());
		return "board/qna_board_list";
	}
	
	//Q&A 작성 페이지 이동
	@GetMapping("/regQnaForm")
	public String regQnaForm() {
		return "board/qna_board_reg";
	}
	
	//Q&A작성
	@PostMapping("/regQna")
	public String regQna(QnaVO qnaVO, HttpSession session) {
		String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		String qnaNum = qnaService.selectNextQnaNum();
		qnaVO.setMemId(memId);
		qnaVO.setQnaNum(qnaNum);
		qnaService.insertQna(qnaVO);
		if(qnaVO.getQnaIsPrivate().equals("Y")) {
			qnaService.updateQnaPw(qnaVO);
		}
		return "redirect:/otherB/qnaBoard";
	}
	
	//Q&A 비밀글 비밀번호 체크
	@PostMapping("/checkPw")
	public String checkPw(QnaVO qnaVO) {
		String qnaNum = qnaService.checkQnaPw(qnaVO);
		
		if(qnaNum != null) {
			return "redirect:/otherB/qnaDetail?qnaNum="+qnaNum;
		}
		return "redirect:/otherB/qnaBoard";
	}
	
	//Q&A상세보기페이지 이동
	@GetMapping("/qnaDetail")
	public String qnaDetail(QnaVO qnaVO, Model model) {
		model.addAttribute("qnaInfo", qnaService.selectQnaDetail(qnaVO));
		model.addAttribute("answerList", qnaService.selectQnaAnswer(qnaVO));
		if(qnaService.selectQnaAnswer(qnaVO).size() != 0) {
			String isAnswered = "Y";
			qnaVO.setIsAnswered(isAnswered);
		}
		else{
			String isAnswered = "N";
			qnaVO.setIsAnswered(isAnswered);
		}
		qnaService.updateisAnswered(qnaVO);
		return "board/qna_board_detail";
	}
	
	//Q&A수정페이지이동
	@GetMapping("/qnaUpdateFrom")
	public String qnaUpdateFrom(QnaVO qnaVO, Model model) {
		model.addAttribute("qnaInfo", qnaService.selectQnaDetail(qnaVO));
		return "board/qna_board_update";
	}
	
	//Q&A수정
	@PostMapping("/updateQna")
	public String updateQna(QnaVO qnaVO) {
		qnaService.updateQna(qnaVO);
		if(qnaVO.getQnaIsPrivate().equals("Y")) {
			qnaService.updateQnaPw(qnaVO);
		}else {
			String qnaPw = "";
			qnaVO.setQnaPw(qnaPw);
			qnaService.updateQnaPw(qnaVO);
		}
		return "redirect:/otherB/qnaDetail?qnaNum="+qnaVO.getQnaNum();
	}
	
	//Q&A삭제
	@GetMapping("/qnaDelete")
	public String qnaDelete(QnaVO qnaVO) {
		qnaService.qnaDelete(qnaVO);
		return "redirect:/otherB/qnaBoard";
	}
	
	//Q&A댓글입력
	@PostMapping("/regQnaCmt")
	public String regQnaCmt(QnaAnswerVO qnaAnswerVO) {
		String answerNum = qnaService.selectNextAnswerNum();
		qnaAnswerVO.setAnswerNum(answerNum);
		qnaService.insertQnaAnswer(qnaAnswerVO);
		return "redirect:/otherB/qnaDetail?qnaNum="+qnaAnswerVO.getQnaNum();
	}
	
	
	//Q&A댓글 수정
	@PostMapping("/updateAnswer")
	public String updateAnswer(QnaAnswerVO qnaAnswerVO) {
		qnaService.updateQnaAnswer(qnaAnswerVO);
		return "redirect:/otherB/qnaDetail?qnaNum="+qnaAnswerVO.getQnaNum();
	}
	
	//Q&A댓글 삭제
	@GetMapping("/deleteQnaAnswer")
	public String deleteQnaAnswer(QnaAnswerVO qnaAnswerVO) {
		qnaService.deleteQnaAnswer(qnaAnswerVO);
		return "redirect:/otherB/qnaDetail?qnaNum="+qnaAnswerVO.getQnaNum();
	}
	
	//Q&A 검색
	@PostMapping("/searchQna")
	public String searchQna(Model model, QnaVO qnaVO) {
		model.addAttribute("qnaList", qnaService.selectSearchQna(qnaVO));		
		return "board/qna_board_list";
	}
		
}
