package com.kh.library.book.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.io.File;

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

import com.kh.library.admin.service.MemberAdminService;
import com.kh.library.admin.vo.MessageVO;
import com.kh.library.book.service.BookAdminService;
import com.kh.library.book.service.BookService;
import com.kh.library.book.vo.BookImgVO;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.HopeBookVO;
import com.kh.library.book.vo.RecommendVO;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.member.vo.MemberVO;

import net.sf.json.JSONArray;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Resource(name="bookService")
	private BookService bookService;
	

	@Resource(name = "bookAdminService")
	private BookAdminService bookAdminService;
	
	@Resource(name = "memberAdminService") 
	private MemberAdminService memberAdminService;
	
	
	@GetMapping("/list")
	public String firstList() {
		return "book/list";
	}
	
	
	//아이디 가져오기
	@ResponseBody
	@GetMapping("/selectMemId")
	public String selectMemID(HttpSession session) {
		String memId = (String) session.getAttribute("memID");
		return memId;
	}
	//책 등록페이지
	@GetMapping("/regBookForm")
	public String regBookForm(Model model) {
			model.addAttribute("cateList",bookService.selectBookCategory());
			return "admin/reg_book";
	}
	
	// 책 등록 
		@PostMapping("/regBook")
		public String regBook(BookVO bookVO, MultipartHttpServletRequest multi) {
			
			  //이미지 저장 공간
		      String nextBookCode = bookAdminService.selectNextBookCode();
		      int nextBookImgCode = bookAdminService.selectNextBookImgCode();
		      
		      bookVO.setBookCode(nextBookCode);
		      
		      MultipartFile file = multi.getFile("file");
		      if(!file.getOriginalFilename().equals("")) {
		    	  String uploadPath = "D:\\git\\spring-study\\LIBRARY\\src\\main\\webapp\\resources\\images\\book\\";
		    	  
		    	  try {
		    		  
		    		  String bkOriginName = file.getOriginalFilename();
		    		  String bkAtName = System.currentTimeMillis()+"_"+file.getOriginalFilename();
		    		  file.transferTo(new File(uploadPath+bkAtName));
		    		  BookImgVO vo = new BookImgVO();
		    		  vo.setBkImgCode(nextBookImgCode++);
		    		  vo.setBkOriginName(bkOriginName);
		    		  vo.setBkAtName(bkAtName);
		    		  vo.setBookCode(bookVO.getBookCode());
		    		  
		    		  //책 insert
		    		  bookVO.setBkImg(bkAtName);
				      bookAdminService.insertBook(bookVO, vo);
				      
		    			  } catch(IllegalStateException e) {
		    				  e.printStackTrace();
		    			  } catch(IOException e) {
		    				  e.printStackTrace();
		    			  }
		    		  }
		      //이미지 첨부 안하면 기본 이미지 세팅 필요
		      else {
		    	  BookImgVO vo = new BookImgVO();
		    	  vo.setBkImgCode(nextBookImgCode++);
	    		  vo.setBkOriginName("book_sample.jpg");
	    		  vo.setBkAtName("book_sample.jpg");
	    		  vo.setBookCode(bookVO.getBookCode());
	    		  bookVO.setBkImg("book_sample.jpg");
	    		  bookAdminService.insertBook(bookVO, vo);
		      }
		   
		      
			return "redirect:/book/bookList";
		
		}
	
	//관리자용 도서 상세보기
	@GetMapping("/bookDetailAdmin")
	public String bookDetailAdmin(Model model, BookVO bookVO, RecommendVO rcdVO, MemberVO memberVO) {
		model.addAttribute("bookDetail", bookService.selectBookDetail(bookVO));
		model.addAttribute("rcdInfo", bookService.selectRcdInfo(rcdVO));
		model.addAttribute("member", bookService.selectRsvInfo(memberVO));
		
		return "admin/book_detail";
	}	
		
	//도서 수정폼
	@GetMapping("/modifyBook")
	public String modifyBook(Model model, BookVO bookVO) {
		model.addAttribute("bookDetail", bookService.selectBookDetail(bookVO));
		
		return "book/modify_book_form";
	}
	
	//도서 수정
	@PostMapping("/updateBook")
	public String updateBook(BookVO bookVO, MultipartHttpServletRequest multi){
		MultipartFile file = multi.getFile("file");
		
	    if(!file.getOriginalFilename().equals("")) {
    	  String uploadPath = "D:\\git\\spring-study\\LIBRARY\\src\\main\\webapp\\resources\\images\\book\\";
    	  
    	  try {
    		  
    		  String bkOriginName = file.getOriginalFilename();
    		  String bkAtName = System.currentTimeMillis()+"_"+file.getOriginalFilename();
    		  file.transferTo(new File(uploadPath+bkAtName));
    		  BookImgVO vo = new BookImgVO();
    		  vo.setBkOriginName(bkOriginName);
    		  vo.setBkAtName(bkAtName);
    		  vo.setBookCode(bookVO.getBookCode());
    		  bookAdminService.updateBkImg(vo);
    		  
    		  bookVO.setBkImg(bkAtName);
		      
    			  } catch(IllegalStateException e) {
    				  e.printStackTrace();
    			  } catch(IOException e) {
    				  e.printStackTrace();
    			  }
    		  }
	    else if(file.getOriginalFilename().equals("")) {
	    	bookVO.setBkImg(bookAdminService.selectBkAtName(bookVO.getBookCode()));
	    }
	    
		//이미지 수정하는 코드 짜야함... 짬
		bookAdminService.updateBook(bookVO);
		
		return "redirect:/book/bookDetailAdmin?bookCode="+bookVO.getBookCode();
	}
	
	//isDelete 조회
	@ResponseBody
	@PostMapping("/selectIsDelete")
	public String selectIsDelete(String bookCode) {
		return bookAdminService.selectIsDelete(bookCode);
		
		
	}
	//도서 삭제
	@RequestMapping("/deleteBook")
	public String deleteBook(BookVO bookVO) {
		
		bookAdminService.deleteBook(bookVO);
		
		return "redirect:/book/bookList";
		
	}
	
	//전체도서 목록 페이지 관리자용 
	@GetMapping("/bookList")
	public String bookList(Model model) {
		//도서 목록 조회
		model.addAttribute("bookList", bookService.selectBookList());
		
		return "admin/book_list";
	}
	
	//전체도서 목록 페이지 
	@GetMapping("/bookListU")
	public String bookListU(Model model) {
		//도서 목록 조회
		model.addAttribute("bookList", bookService.selectBookList());
		
		return "book/book_list_user";
	}
	
	//도서 검색
	@RequestMapping("/searchBook")
	public String searchBook(BookVO bookVO, Model model) {
		
		model.addAttribute("searchList", bookService.selectSearchList(bookVO));		
   
		return "book/search_book";
	}
	//도서 상세보기
	@GetMapping("/bookDetail")
	public String bookDetail(Model model, BookVO bookVO, RecommendVO rcdVO, MemberVO memberVO) {
		model.addAttribute("bookDetail", bookService.selectBookDetail(bookVO));
		model.addAttribute("rcdInfo", bookService.selectRcdInfo(rcdVO));
		model.addAttribute("member", bookService.selectRsvInfo(memberVO));
		return "book/book_detail";
	}
	
	
	//도서 추천
	@GetMapping("/rcdBook")
	public String rcdBook(Model model, BookVO bookVO) {
		
		System.out.println("!!!"+bookVO.getBookCode());
		System.out.println("!!!"+bookVO.getMemId());
		bookService.updateRcdCnt(bookVO);
	
		
		return "redirect:/book/bookDetail?bookCode="+bookVO.getBookCode()+"&memId="+bookVO.getMemId();
	}
	
	//추천도서 랭킹
	@GetMapping("/selectRcdBook")
	public String selectRcdBook(Model model) {
		model.addAttribute("bookList", bookAdminService.selectRcdBook());
		
		return "manage/home";
	}
	
	//신간도서 select 
	@GetMapping("/selectNewBook")
	public String selectNewBook(Model model) {
		model.addAttribute("newBookList", bookAdminService.selectNewBook());
		
		return "book/list";
	}
	
	//중복예약방지-예약중복
	@ResponseBody
	@PostMapping("/selectRsvCode")
	public String selectRsvCode(ReserveVO reserveVO) {
		return bookService.selectRsvCode(reserveVO);
	}
	
	//대출시예약방지
	@ResponseBody
	@PostMapping("/selectBrCode")
	public String selectBrCode(BorrowVO borrowVO) {
		return bookService.selectBrCode(borrowVO);
	}
	
	//도서예약
	@RequestMapping("/reserve")
	public String reserve(BookVO bookVO, Model model ,MemberVO memberVO) {
		bookService.reserve(bookVO, memberVO);
		model.addAttribute("bookDetail", bookService.selectBookDetail(bookVO));
		
		return "book/book_detail";
	}
	
	//관리자 도서예약리스트 조회
	@GetMapping("/reserveListAdmin")
	public String selectRsvAdmin(ReserveVO reserveVO, Model model , BorrowVO borrowVO) {
		model.addAttribute("adminReserve", bookAdminService.selectRsvList(reserveVO));
		
		return "admin/reserve_list";
	}
	
	//재대출 방지 rtDate 조회
	@ResponseBody
	@PostMapping("/selectRtDate")
	public String selectRtDate(BorrowVO borrowVO) {
		return bookAdminService.selectRtDate(borrowVO);
	}
	
	//도서 대여
	@RequestMapping("/borrowBook")
	public String borrowBook(ReserveVO reserveVO, MemberVO memberVO, MessageVO messageVO) {
		System.out.println("!!!" + reserveVO.getMemId());
		System.out.println("!!!" + reserveVO.getIsbn());
		System.out.println("!!!"+memberVO.getMemId());
		bookAdminService.borrowBook(reserveVO, memberVO);
		memberAdminService.insertSendMessage(messageVO);
		
		return "redirect:/book/reserveListAdmin";
	}
	
	
	//대여 목록 조회
	@GetMapping("/selectBrList")
	public String selectBrList(BorrowVO borrowVO, Model model) {
		model.addAttribute("adminBorrow", bookAdminService.selectBrList(borrowVO));
		
		return "admin/borrow_list";
	}
	
	//분류별 조회
	@RequestMapping("/selectBrStatus")
	public String selectBrStatus(BorrowVO borrowVO, Model model) {
		
		model.addAttribute("adminBorrow", bookAdminService.selectBrStatus(borrowVO));
		
		return "admin/borrow_list";
	}
	
	//회원별 대여 목록 조회
	@RequestMapping("/selectBrMember")
	public String selectBrMember(BorrowVO borrowVO, Model model, MemberVO memberVO) {
		model.addAttribute("adminBorrow", bookAdminService.selectBrMember(borrowVO));
		model.addAttribute("member", bookAdminService.selectLimitDate(memberVO));
		return "admin/borrow_list_member";
	}
	
	
	
	//도서 반납
	@RequestMapping("/returnBook")
	public String returnBook(BorrowVO borrowVO , MemberVO memberVO, Model model) {
		bookAdminService.updateReturn(borrowVO, memberVO);
		model.addAttribute("adminBorrow", bookAdminService.selectBrMember(borrowVO));
		
		return "admin/borrow_list_member";
	}
	
	//연체도서 반납
	@RequestMapping("/returnOverdue")
	public String returnOverdue(BorrowVO borrowVO, MemberVO memberVO) {
		System.out.println(borrowVO.getLimitDate());
		System.out.println(memberVO.getLimitDate());
		bookAdminService.updateReturn(borrowVO, memberVO);
		bookAdminService.updateLimit(memberVO);
		
		return "redirect:/book/selectBrMember?memId="+memberVO.getMemId();
	}
	
	// ----------------------------- 속 내용만 어드민컨트롤러로 이동 -------------------------
	/*
	 * @GetMapping("/updateOverdue") public String updateOverdue() {
	 * bookAdminService.updateOverdue(); bookAdminService.clearLimitDate();
	 * 
	 * return "manage/home"; }
	 */
	
	//희망도서 신청 폼 
	@GetMapping("/hopeBookForm")
	public String hopeBookForm() {
		
		return "book/reg_hope_book";
	}
	
	//희망도서  등록
	@PostMapping("/regHopeBook")
	public String regHopeBook(Model model, HopeBookVO hbVO) {
		bookService.insertHopeBook(hbVO);
		return "book/fin_hope_book";
	}

	//희망도서 목록 (ADMIN)
	@GetMapping("/hopeBookList")
	public String selectHopeBook(Model model) {
		
		model.addAttribute("hbBook", bookAdminService.selectHopeBookList());
		return "admin/hope_book_list";
	}
	
	//분류별 희망도서 조회 
	@RequestMapping("/hopeBookListStatus")
	public String selectHopeBookStatus(Model model, HopeBookVO hbVO) {
		model.addAttribute("hbBook", bookAdminService.selectHopeBookListStatus(hbVO));
		return "admin/hope_book_list";
	}

	//희망도서 상태 업데이트
	@RequestMapping("/updateHopeBook")
	public String updateHopeBook( HopeBookVO hbVO) {
		bookAdminService.updateHopeBook(hbVO);
		return "redirect:/book/hopeBookList";
	}
	
	//희망도서 상태 선택 변경
	@ResponseBody
	@PostMapping("/updateHp")
	public void updateHp(String data, HttpSession session) {
		
		System.out.println(data);
		
		List<Map<String, String>> list = JSONArray.fromObject(data);
		String[] hopeCodeArr = new String[list.size()];
		
		int index = 0;
		
		List<HopeBookVO> hopeBookList = new ArrayList<HopeBookVO>();
		HopeBookVO hbVO = new HopeBookVO();
		for(Map<String, String> map : list) {
			System.out.println("hopeCode : "+map.get("hopeCode") + "/ status="+map.get("status"));
			
			HopeBookVO hb = new HopeBookVO();
			hb.setHopeCode(map.get("hopeCode"));
			hb.setStatus(Integer.parseInt(map.get("status")));
			
			hopeBookList.add(hb);
			
			hopeCodeArr[index++]=map.get("hopeCode");
		}
		hbVO.setHopeBookList(hopeBookList);
		
		bookAdminService.updateHopeBook(hbVO);
	

}
}
