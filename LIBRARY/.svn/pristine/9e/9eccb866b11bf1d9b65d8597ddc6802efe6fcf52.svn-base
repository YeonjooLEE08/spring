package com.kh.library.board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@RequestMapping("/regNtBoard")
	public String insertNtBoard(Model model, NtBoardVO ntBoardVO, RedirectAttributes rttr) throws Exception {
		//파일 업로드
		String fileName=null;
		MultipartFile uploadFile = ntBoardVO.getUploadFile();
		
		if(!uploadFile.isEmpty()){
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName);
			UUID uuid = UUID.randomUUID();
			fileName = uuid+"."+ext;
			uploadFile.transferTo(new File("D:\\git\\spring\\LIBRARY\\src\\main\\webapp\\resources\\upload\\"+fileName));
		}
		ntBoardVO.setFileName(fileName);
		
		String nextNtCode = boardService.selectNextNtCode();
		ntBoardVO.setNtCode(nextNtCode);
		boardService.insertNtBoard(ntBoardVO);
		return "redirect:/board/ntBoardList";
	}
	
	//공지사항 리스트
	@GetMapping("/ntBoardList")
	public String selectNtBoardList(Model model, NtBoardVO ntBoardVO) {
		//-----------------페이징 정보 세팅
		//1.전체 데이터의 개수 조회
		int listCnt = boardService.selectBoardCnt(ntBoardVO);
		ntBoardVO.setTotalCnt(listCnt);
		
		//2.페이징 처리를 위한 세팅 메소드 호출
		ntBoardVO.setPageInfo();
		
		model.addAttribute("ntBoardList", boardService.selectNtBoardList());
		return "board/nt_board_list";
	}
	
	//공지사항 검색
	@RequestMapping("/searchNt")
	public String selectSearchNt(Model model, NtBoardVO ntBoardVO) {
		//-----------------페이징 정보 세팅
		//1.전체 데이터의 개수 조회
		int listCnt = boardService.selectBoardCnt(ntBoardVO);
		ntBoardVO.setTotalCnt(listCnt);
		
		//2.페이징 처리를 위한 세팅 메소드 호출
		ntBoardVO.setPageInfo();
		
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
	
	
	//공지사항 첨부파일 다운로드
	@RequestMapping("/fileDownload")
	public void fileDownload(HttpServletRequest request, HttpServletResponse response) {
		
		String filename = request.getParameter("fileName");
		String realFilename="";
		System.out.println(filename);
		
		try {
			String browser = request.getHeader("User-Agent");
			
			if(browser.contains("MSIE")|| browser.contains("Trident")|| browser.contains("Chrome")) {
				filename = URLEncoder.encode(filename,"UTF-8").replaceAll("\\+", "%20");
			}
			else {
				filename = new String(filename.getBytes("UTF-8"), "ISO-8859-1");
			}
		}catch (UnsupportedEncodingException ex) {
			System.out.println("UnsupportedEncodingException");
		}
		
		realFilename = "D:\\git\\spring\\LIBRARY\\src\\main\\webapp\\resources\\upload\\"+filename;
		System.out.println(realFilename);
		
		File file1 = new File(realFilename);
		if(!file1.exists()) {
			return;
		}
		
		response.setContentType("application/octer-stream");
		response.setHeader("Content-Transfer-Encoding", "binary;");
		response.setHeader("Content-Disposition", "attachment; filename=\""+filename+"\"");
		
		try {
			OutputStream os = response.getOutputStream();
			FileInputStream fis = new FileInputStream(realFilename);
			
			int ncount = 0;
			byte[] bytes = new byte[512];
			
			while((ncount = fis.read(bytes)) != -1) {
				os.write(bytes, 0 , ncount);
			}
			fis.close();
			os.close();
		}catch (Exception e) {
			System.out.println("FileNotFoundException: " +e);
		}
	}

}
