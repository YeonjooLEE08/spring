package com.kh.library.member.controller;

import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.library.book.service.BookService;
import com.kh.library.book.vo.BookVO;
import com.kh.library.book.vo.BorrowVO;
import com.kh.library.book.vo.HopeBookVO;
import com.kh.library.book.vo.ReserveVO;
import com.kh.library.club.vo.ClubApplyVO;
import com.kh.library.club.vo.ClubVO;
import com.kh.library.member.service.MemberService;
import com.kh.library.member.vo.BookComplitVO;
import com.kh.library.member.vo.MemberImageVO;
import com.kh.library.member.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class MemberController {
   @Resource(name = "memberService")
   private MemberService memberService;
   
   @Resource(name="bookService")
   private BookService bookService;

   @Autowired
   private JavaMailSender mailSender;

   @Autowired
   private BCryptPasswordEncoder pwEncoder;

   // --------------회원가입---------------
   // 회원가입창 이동
   @GetMapping("/join")
   public String joinForm() {
      return "member/join_form";
   }

   // 아이디 중복 체크
   @ResponseBody
   @PostMapping("/checkId")
   public int checkId(String memId) {
      return memberService.checkId(memId);
   }

   // 가입
   @PostMapping("/join")
   public String join(MemberVO memberVO, MultipartHttpServletRequest multi) {
      memberVO.setMemTell(memberVO.getMemTell().replace(",", "-"));
      memberVO.setMemAddr(memberVO.getMemAddr().replace(",", " "));
      memberVO.setMemEmail(memberVO.getMemEmail().replace(",", "@"));
      
      //-------------------비밀번호 암호화-----------------------//
      String encodePw = pwEncoder.encode(memberVO.getMemPwd());
      memberVO.setMemPwd(encodePw);
      
      //-------------------프로필 이미지 첨부--------------------// 
      MultipartFile file = multi.getFile("file");
      //다음에 들어갈 MEM_IMG_CODE값
      int nextNum = memberService.selectNextMemImgCode();
      
      if(!file.getOriginalFilename().equals("")) {
         
         String uploadPath = "D:\\dev\\workspaceSTS\\LIBRARY\\src\\main\\webapp\\resources\\images\\member\\";
         
         try {
            String memOriginName = file.getOriginalFilename();
            String memAtImgName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + memAtImgName));
            MemberImageVO vo = new MemberImageVO();
            vo.setMemImgCode(nextNum++);
            vo.setMemOriginName(memOriginName);
            vo.setMemAtImgName(memAtImgName);
            vo.setMemId(memberVO.getMemId());
            memberVO.setMemImage(memAtImgName);
            memberService.joinMember(memberVO);
            memberService.insertMemberImage(vo);
            
         } catch (IllegalStateException e) {
            //업로드 예외 발생시
            e.printStackTrace();
         } catch (IOException e) {
            //파일 입출력 예외 발생시
            e.printStackTrace();
         }
         
      }
      else {
         MemberImageVO vo = new MemberImageVO();
         vo.setMemImgCode(nextNum++);
         vo.setMemOriginName("profile_sample.jpg");
         vo.setMemAtImgName("profile_sample.jpg");
         vo.setMemId(memberVO.getMemId());
         memberVO.setMemImage("profile_sample.jpg");
         memberService.joinMember(memberVO);
         memberService.insertMemberImage(vo);
      }

      
      return "member/join_result";
   }

   // ----------------로그인-----------------
   // 로그인창 이동
   @GetMapping("/login")
   public String loginForm() {
      return "member/login_form";
   }

   // 로그인
   @ResponseBody
   @PostMapping("/login")
   public int login(String memId, String memPwd, HttpSession session) {
      MemberVO loginMem = memberService.login(memId);
      int result = 1;
      if (loginMem != null && pwEncoder.matches(memPwd, loginMem.getMemPwd())) {
         session.setAttribute("loginInfo", loginMem);
         //session.setMaxInactiveInterval(60*60);
         result = 0;
      }
      return result; // 메인 화면 경로 정하기
   }

   // 로그아웃
   @GetMapping("/logout")
   public String logout(HttpSession session) {
      session.removeAttribute("loginInfo");
      return "redirect:/admin/test";
   }

   // 아이디 찾기
   @GetMapping("/findId")
   public String findIdForm() {
      return "find/find_id";
   }

   @ResponseBody
   @PostMapping("/findId")
   public String findInd(MemberVO memberVO) {
      String result = memberService.findId(memberVO);
      System.out.println(result);
      return result;
   }

   // 비밀번호 찾기
   @GetMapping("/findPwd")
   public String findPwdForm() {
      return "find/find_pwd";
   }

   @ResponseBody
   @PostMapping("/findPwd")
   public void findPwd(MemberVO memberVO) {
	   
	      
	      
      // 임시 비번 보낼 이메일 조회
      String memEmail = memberService.selectEmail(memberVO);
      // 임시 비밀번호 생성 소문자 + 대문자 + 숫자 포함 8자리
      String tempPwd = getTempPwd();
      
      
      //-------------------비밀번호 암호화-----------------------//
      String encodePw = pwEncoder.encode(tempPwd);
      memberVO.setMemPwd(encodePw);
      
      
      
     // memberVO.setMemPwd(tempPwd);
      memberService.updateTempPwd(memberVO);
      try {
         MimeMessage message = mailSender.createMimeMessage();
         MimeMessageHelper messageHelper;
         messageHelper = new MimeMessageHelper(message, true, "UTF-8");
         messageHelper.setFrom("surfurlove@gmail.com");
         messageHelper.setTo(memEmail);
         messageHelper.setSubject("양심 도서관 비밀번호 잃어버리셨죠?");
         messageHelper.setText("임시 비밀번호는  " + tempPwd + "  입니다. 로그인 후 새비밀번호로 변경해주세요.");
         mailSender.send(message);

      } catch (MessagingException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }

   }
   // ---------------마이페이지---------------

   // 내 정보 상세조회 이동
   @GetMapping("/myPageDetail")
   public String myPageDetail(Model model, String memId) {
	
	  model.addAttribute("memberInfo", memberService.selectMyPageDetail(memId));
      return "mypage/my_page_detail";
   }
   
   
   //기본 정보 수정
   @PostMapping("/updateBasicInfo")
   public String updateBasicInfo(Model model, MemberVO memberVO, MultipartHttpServletRequest multi
         , HttpSession session, RedirectAttributes re) {
	  memberVO.setMemTell(memberVO.getMemTell().replace(",", "-"));
      MultipartFile file = multi.getFile("file");
      System.out.println("@@@@@@@@@@@@@@@@@@@" + file.getOriginalFilename());
      if(!file.getOriginalFilename().equals("")) {
         String uploadPath = "D:\\dev\\workspaceSTS\\LIBRARY\\src\\main\\webapp\\resources\\images\\member\\";
         
         try {
            String memOriginName = file.getOriginalFilename();
            String memAtImgName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            file.transferTo(new File(uploadPath + memAtImgName));
            MemberImageVO vo = new MemberImageVO();
            vo.setMemOriginName(memOriginName);
            vo.setMemAtImgName(memAtImgName);
            vo.setMemId(memberVO.getMemId());
            memberService.updateMemImage(vo);
            
            memberVO.setMemImage(memAtImgName);
            
         } catch (IllegalStateException e) {
            //업로드 예외 발생시
            e.printStackTrace();
         } catch (IOException e) {
            //파일 입출력 예외 발생시
            e.printStackTrace();
         }
         
      }
      //기본 정보 수정은 했는데 프로필은 바꾸지 않았을 경우
      else if(file.getOriginalFilename().equals("")){
         memberVO.setMemImage(memberService.selectMemAtImgName(memberVO.getMemId()));
         
      
      }
      
      else if(file.getOriginalFilename().equals("profile_sample.jpg")){
          MemberImageVO vo = new MemberImageVO();
          vo.setMemOriginName("profile_sample.jpg");
          vo.setMemAtImgName("profile_sample.jpg");
          vo.setMemId(memberVO.getMemId());
          memberVO.setMemImage("profile_sample.jpg");
          memberService.joinMember(memberVO);
          memberService.insertMemberImage(vo);
       }
      
      memberService.updateBasicInfo(memberVO);
      session.setAttribute("loginInfo", memberService.login(memberVO.getMemId()));
      re.addAttribute("memId", memberVO.getMemId());
      return "redirect:/member/myPageDetail";
   }
   
   //보안 정보 수정
   @ResponseBody
   @PostMapping("/checkPwd")
   public int checkPwd(String memId, String memPwd) {
	   boolean a = pwEncoder.matches(memPwd, memberService.checkPwd(memId));
	   System.out.println("@@@@@@@@@@@@@@@@@@@" + a);
	   if(pwEncoder.matches(memPwd, memberService.checkPwd(memId))) {
		   return 1;
	   }
	   else {
		   return 0;
	   }
   }
   @PostMapping("/updateSecretInfo")
   public String updateSecretInfo(MemberVO memberVO) {
	   //-------------------비밀번호 암호화-----------------------//
	      String encodePw = pwEncoder.encode(memberVO.getMemPwd());
	      memberVO.setMemPwd(encodePw);
	      memberService.updateSecretInfo(memberVO);
	   //   session.setAttribute("loginInfo", memberService.login(memberVO.getMemId()));
	      
	   return "redirect:/member/myPageDetail?memId=" + memberVO.getMemId();
   }
   
   //추가 정보 수정
   @PostMapping("/updatePlusInfo")
   public String updatePlusInfo(MemberVO memberVO) {
	   memberVO.setMemAddr(memberVO.getMemAddr().replace(",", " "));
	   if(memberVO.getMemBirth() == null) {
		   memberVO.setMemBirth(memberService.selectMyPageDetail(memberVO.getMemId()).getMemBirth());
	   }
	   memberService.updatePlusInfo(memberVO);
	   return "redirect:/member/myPageDetail?memId=" + memberVO.getMemId();
   }

   // 대출 리스트 상세
   @GetMapping("/reserveListDetail")
   public String reserveListDetail() {
      return "member/reserveList_detail";
   }

   
   // 독서 플래너
	@GetMapping("/bookPlaner")
	public String bookPlaner(HttpSession session, Model model) {
		
		String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		List<BookComplitVO> list = memberService.selectBookPlaner(memId);
			for(int i = 0 ; i < list.size() ; i++) {
				if(list.get(i).getBookInfo().getBkPage() >= 100) { //100페이지 이상이면
					list.get(i).getBookInfo().setBkPage((int)(list.get(i).getBookInfo().getBkPage() * 0.025));
				}
				else {
					list.get(i).getBookInfo().setBkPage(2);
				}
			}
			
			model.addAttribute("chartList", memberService.selectBookPlanerChart(memId));
			model.addAttribute("complitBookList", list);
		
		return "mypage/book_planer";
	}
	
	//독서 플래너 상세조회
	@GetMapping("/bookPlanerDetail")
	public String bookPlanerDetail(BookComplitVO bookComplitVO, Model model) {
		model.addAttribute("bookPlaner", memberService.selectBookPlanerDetail(bookComplitVO));
		return "mypage/book_planer_detail";
	}
	//독서 플래너 삭제
	@ResponseBody
	@PostMapping("/bookPlanerDelete")
	public void bookPlanerDelete(String complitCode) {
		memberService.deleteBookPlaner(complitCode);
	}
	
	//독서 플래너 수정 폼 이동
	@GetMapping("/bookPlanerUpdate")
	public String bookPlanerUpdate(BookComplitVO bookComplitVO, Model model){
		model.addAttribute("bookPlaner", memberService.selectBookPlanerDetail(bookComplitVO));
		return "mypage/book_planer_update";
	}
	
	//독서 플래너 수정
	@PostMapping("/updateBookPlaner")
	public String updateBookPlaner(BookComplitVO bookComplitVO, RedirectAttributes re) {
		memberService.updateBookPlaner(bookComplitVO);
		re.addFlashAttribute(bookComplitVO);
		return "redirect:/member/bookPlanerDetail";
	}
   //독서 플래너 폼 이동
   @GetMapping("/bookPlanerForm")
   public String bookPlanerForm() {
      return "mypage/book_planer_form";
   }
   
   //독서 플래너 - 책 검색하기
   @ResponseBody
   @PostMapping("/bookPlanerSearch")
   public List<BookVO> bookPlanerSearch(BookVO bookVO) {
      return memberService.selectBookPlanerSearch(bookVO);
   }
   
   //독서 플래너 - 완독 도서 입력
   @PostMapping("/insertBookPlaner")
   public String insertBookPlaner(BookVO bookVO, BookComplitVO bookComplitVO, Model model, RedirectAttributes re) {
      memberService.insertBookPlaner(bookVO);
      re.addAttribute("memId", bookComplitVO.getMemId());
      return "redirect:/member/bookPlaner";
   }
   ///////////////////////////////북클럽/////////////////////////////////
   //북클럽 조회 + 신청
   @GetMapping("/selectBookClub")
   public String selectBookClub(String memId, Model model) {
      ClubVO clubVO = memberService.selectMyBookClub(memId);
      model.addAttribute("myBookClub", clubVO);
      model.addAttribute("myBookClubApply", memberService.selectMyBookClubApply(memId));
      return "mypage/my_book_club";
   }
   
   //북클럽 신청 취소
	@ResponseBody
	@PostMapping("/myBookClubCancel")
	public void clubJoinRejection(ClubApplyVO clubApplyVO) {
		memberService.deleteMyBookClubApply(clubApplyVO);
	}
   
   //예약 도서 목록 조회
   @GetMapping("/reserveListU")
   public String selectRsvUser(ReserveVO reserveVO, Model model) {
	   model.addAttribute("userReserve", bookService.selectRsvUser(reserveVO));
	   
	   return "mypage/my_reserve_book";
   }
   //예약 취소
   @GetMapping("/cancleReserve")
   public String deleteReserve(ReserveVO reserveVO, Model model,MemberVO memberVO) {
      bookService.deleteReserve(reserveVO,memberVO);
      model.addAttribute("userReserve", bookService.selectRsvUser(reserveVO));
      return "mypage/my_reserve_book";
   }
   
   //대여 도서 목록 조회
   @GetMapping("/borrowListU")
   public String selectBrUser(BorrowVO borrowVO, Model model) {
      model.addAttribute("userBorrow", bookService.selectBrUser(borrowVO));
      return "mypage/my_borrow_book";
   }
  //희망도서 신청 조회
   @GetMapping("/hopeBookListU")
   public String selectHpUser(HopeBookVO hbVO, Model model) {
      model.addAttribute("hbBook", bookService.selectHpUser(hbVO));
      return "mypage/my_hope_book";
   }
   
   //상태별 희망도서 신청 조회 
   @RequestMapping("/hopeBookStatusU")
   public String selectHpStatusUser(Model model, HopeBookVO hbVO) {
      model.addAttribute("hbBook", bookService.selectHpStatusUser(hbVO));
      return "my_page/my_hope_book";
   }

   // 대소문자 + 숫자 포함 8자리 문자열 생성 및 리턴
   public String getTempPwd() {
      String lowerCase = "abcdefghijklmnopqrstuvwxyz";
      String upperCase = lowerCase.toUpperCase();
      String num = "0123456789";
      String baseStr = lowerCase + upperCase + num;

      StringBuilder tempPwd = new StringBuilder();
      for (int i = 0; i < 8; i++) {
         SecureRandom random = new SecureRandom();
         int index = random.nextInt(baseStr.length());
         char c = baseStr.charAt(index);
         tempPwd.append(String.valueOf(c));
      }
      return tempPwd.toString();
   }
   
   
   
}