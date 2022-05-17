package com.kh.library.club.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.library.admin.vo.MessageVO;
import com.kh.library.book.vo.BookImgVO;
import com.kh.library.club.service.ClubAdminService;
import com.kh.library.club.service.ClubService;
import com.kh.library.club.service.MessageService;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubBoardCmtVO;
import com.kh.library.club.vo.ClubBoardVO;
import com.kh.library.club.vo.ClubImageVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.vo.MemberVO;
import com.kh.library.util.vo.PageVO;


@Controller
@RequestMapping("/club")
public class ClubController {
	@Resource(name = "clubService")
	private ClubService clubService;
	
	@Resource(name = "clubAdminService")
	private ClubAdminService clubAdminService;

	@Resource(name = "messageService")
	private MessageService messageService;
	
	//북클럽 이용안내
	@GetMapping("/clubInfo")
	public String clubInfo() {
		return "club/club_info";
	}
	
	//북클럽 목록 조회
	@GetMapping("/clubList")
	public String clubList(Model model, HttpSession session, ClubVO clubVO, MemberVO memberVO) {
		
		//-----------------페이징 정보 세팅
		//1.전체 데이터의 개수 조회
		int listCnt = clubService.selectClubListCnt(clubVO);
		clubVO.setTotalCnt(listCnt);
		
		//2.페이징 처리를 위한 세팅 메소드 호출
		clubVO.setPageInfo();
		
		if(session.getAttribute("loginInfo") != null) {
			String getId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			
			model.addAttribute("msgCnt", clubService.selectMsgCount(getId));
			model.addAttribute("clubApplyCode", clubService.selectClubApplyCode(memId));
		}
		
		
		model.addAttribute("clubList", clubService.selectClubList(clubVO));
		
		return "club/club_list1";
	}
	
	@ResponseBody
	@PostMapping("/msgCnt")
	public int msgCnt(HttpSession session) {
		String getId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		return clubService.selectMsgCount(getId);
	}
	
	//북클럽 생성페이지 이동
	@GetMapping("/clubCreate")
	public String clubCreate() {
		return "club/club_create";
	}
	//북클럽 생성
	@PostMapping("/clubCreate")
	public String clubCreate(ClubVO clubVO, MultipartHttpServletRequest multi) {
		
		//이미지 저장 공간
		String nextClubCode = clubService.selectNextClubCode();
	    int nextcbImgCode = clubService.selectNextClubImgCode();
	    
	    clubVO.setClubCode(nextClubCode);
	    
	      MultipartFile file = multi.getFile("file");
	      if(!file.getOriginalFilename().equals("")) {
	    	  String uploadPath = "D:\\Git\\workspaceSTS\\LIBRARY\\src\\main\\webapp\\resources\\images\\club\\";
	    	  
	    	  try {
	    		  String cbOriginName = file.getOriginalFilename();
	    		  String cbAtName = System.currentTimeMillis()+"_"+file.getOriginalFilename();
	    		  file.transferTo(new File(uploadPath+cbAtName));
	    		  ClubImageVO vo = new ClubImageVO();
	    		  vo.setCbImgCode(nextcbImgCode++);
	    		  vo.setCbOriginName(cbOriginName);
	    		  vo.setCbAtName(cbAtName);
	    		  vo.setClubCode(clubVO.getClubCode());
	    		  
	    		  //클럽 insert
	    		  clubVO.setCbAtName(cbAtName);
	    		  clubService.insertUpdateClubCreate(clubVO, vo);
			      
	    			  } catch(IllegalStateException e) {
	    				  e.printStackTrace();
	    			  } catch(IOException e) {
	    				  e.printStackTrace();
	    			  }
	    		  }
	      //이미지 첨부 안하면 기본 이미지 세팅 필요
	      else {
	    	  ClubImageVO vo = new ClubImageVO();
	    	  vo.setCbImgCode(nextcbImgCode++);
    		  vo.setCbOriginName("club_sample.jpg");
    		  vo.setCbAtName("club_sample.jpg");
    		  vo.setClubCode(clubVO.getClubCode());
		  		clubVO.setCbAtName("club_sample.jpg");
		  		clubService.insertUpdateClubCreate(clubVO, vo);
	      }
	      
		
		return "redirect:/clubAdmin/monthlyBook?clubCode=" + clubVO.getClubCode();
	}
	//북클럽 상세조회 + 검색
	@RequestMapping("/clubDetail")
	public String clubDetail(Model model, String clubCode, MemberVO memberVO, ClubBoardVO clubBoardVO, HttpSession session) {
		
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
		//공지사항 조회
		model.addAttribute("noticeList", clubService.selectNoticBoardList(clubBoardVO));
		//이달의책 조회
		model.addAttribute("monthlyBk", clubAdminService.selectMonthlyBook(clubCode));
	
		
		if(session.getAttribute("loginInfo") != null) {
			String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			model.addAttribute("clubApplyCode", clubService.selectClubApplyCode(memId));
		}
		
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
	public String clubDetailUpdate(ClubVO clubVO, Model model, RedirectAttributes redirectAttributes, MultipartHttpServletRequest multi) {
		MultipartFile file = multi.getFile("file");
		
	    if(!file.getOriginalFilename().equals("")) {
    	  String uploadPath = "D:\\Git\\workspaceSTS\\LIBRARY\\src\\main\\webapp\\resources\\images\\club\\";
    	  
    	  try {
    		  
    		  String cbOriginName = file.getOriginalFilename();
    		  String cbAtName = System.currentTimeMillis()+"_"+file.getOriginalFilename();
    		  file.transferTo(new File(uploadPath+cbAtName));
    		  ClubImageVO vo = new ClubImageVO();
    		  vo.setCbOriginName(cbOriginName);
    		  vo.setCbAtName(cbAtName);
    		  vo.setClubCode(clubVO.getClubCode());
    		  clubService.updateClubImage(vo);
    		  
    		  clubVO.setCbAtName(cbAtName);
		      
    			  } catch(IllegalStateException e) {
    				  e.printStackTrace();
    			  } catch(IOException e) {
    				  e.printStackTrace();
    			  }
    		  }
	    else if(file.getOriginalFilename().equals("")) {
	    	clubVO.setCbAtName(clubService.selectCbAtName(clubVO.getClubCode()));
	    }
		
		clubService.updateClubDetail(clubVO);
		redirectAttributes.addAttribute("clubCode", clubVO.getClubCode());
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
	public String clubBoardDelete(ClubBoardVO clubBoardVO, RedirectAttributes redirectAttributes, HttpServletRequest request, String clubCode) {
		redirectAttributes.addAttribute("clubCode", clubCode);
		clubService.deleteClubBoard(clubBoardVO);
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
