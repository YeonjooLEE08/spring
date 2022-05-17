package com.kh.library.item.controller;


import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.item.service.SalesService;
import com.kh.library.item.vo.OrderSheetVO;


@Controller
@RequestMapping("/sales")
public class SalesController {

	@Resource(name = "salesService")
	private SalesService salesService;
	
	//주문내역페이지로 이동
	@GetMapping("/orderStateManage")
	public String orderStateManage(Model model) {
		model.addAttribute("salesList",salesService.selectOrderAll());
		return "admin/order_state_update";
	}
	
	//주문내역 배송상태 건별 변경
	@PostMapping("/updateItemState")
	public String updateItemState(OrderSheetVO orderSheetVO) {
		salesService.updateItemState(orderSheetVO);
		return "redirect:/sales/orderStateManage";
	}
	
	//주문내역 배송상태 선택 변경
	@ResponseBody
	@PostMapping("/updateItemsStates")
	public void updateItemsStates(OrderSheetVO orderSheetVO) {
		salesService.updateItemsStates(orderSheetVO);
	}

	//주문내역 선택 삭제
	@GetMapping("/deleteOrders")
	public String deleteOrders(OrderSheetVO orderSheetVO) {
		salesService.deleteOrders(orderSheetVO);
		return "redirect:/sales/orderStateManage";
	}
	
	//주문내역 배송상태별 조회
	@GetMapping("/searchKindState")
	public String searchKindState(OrderSheetVO orderSheetVO, Model model) {
		model.addAttribute("salesList",salesService.searchKindState(orderSheetVO));
		return "admin/order_state_update";		
	}
	
	//주문내역 기간조회
	@PostMapping("/searchStatePeriod")
	public String searchStatePeriod(Model model, OrderSheetVO orderSheetVO) {
		model.addAttribute("salesList",salesService.searchStatePeriod(orderSheetVO));
		return "admin/order_state_update";		
	}
	
	//주문내역 조건검색
	@PostMapping("/searchOrderState")
	public String searchOrderState(Model model, OrderSheetVO orderSheetVO) {
		model.addAttribute("salesList",salesService.searchOrderState(orderSheetVO));
		return "admin/order_state_update";		
	}
	
	//매출현황페이지이동
	@GetMapping("/salesStatus")
	public String salesStatus(Model model, OrderSheetVO orderSheetVO) {
		//일별매출
		model.addAttribute("salesDay", salesService.selectSalesDay());
		
		//주별매출
		model.addAttribute("salesWeek", salesService.selectSalesWeek());
		
		//월별매출
		model.addAttribute("salesMonth", salesService.selectSalesMonth());
		
		//년별매출
		model.addAttribute("salesYear", salesService.selectSalesYear());
		
		//아이템상태별 특정일 매출상태
		model.addAttribute("itemPre", salesService.selectSalesItemStateDay("상품준비중"));
		model.addAttribute("deliPre", salesService.selectSalesItemStateDay("배송준비중"));
		model.addAttribute("payFin", salesService.selectSalesItemStateDay("결제완료"));
		model.addAttribute("deliPro", salesService.selectSalesItemStateDay("배송처리"));
		model.addAttribute("deliFin", salesService.selectSalesItemStateDay("배송완료"));
		model.addAttribute("cancle", salesService.selectSalesItemStateDay("취소요청"));
		
		//그래프 그릴때, 넣어줄 날짜와 매출 리스트
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String toDay = date.format(today);
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH , -1);
		String beforeMonth = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		
		orderSheetVO.setInputEDate(toDay);
		orderSheetVO.setInputSDate(beforeMonth);
		model.addAttribute("period", salesService.selcetSalesPeriod(orderSheetVO));
		
		return "admin/sales_status";
	}
	
	@ResponseBody
	@PostMapping("/sByItemStatePeriod")
	public List<OrderSheetVO> sByItemStatePeriod(OrderSheetVO orderSheetVO) {
		return salesService.selcetSalesPeriod(orderSheetVO);
	}
	
	
/////매출 엑셀 출력
	@RequestMapping(value = "/salesExcel", method = RequestMethod.POST)
	public void salesExcel(Model model, HttpServletResponse response, HttpServletRequest request) throws Exception {
		String inputSDate = request.getParameter("inputSDate");
		String inputEDate = request.getParameter("inputEDate");
		
		OrderSheetVO orderSheetVO = new OrderSheetVO();
		orderSheetVO.setInputSDate(inputSDate);
		orderSheetVO.setInputEDate(inputEDate);
		List<OrderSheetVO> salesData = salesService.selcetSalesPeriod(orderSheetVO);
		
		Workbook wb = new HSSFWorkbook(); //엑셀파일 객체 생성
		Sheet sheet = wb.createSheet("매출"); //시트생성(첫번째 시트, 시트면은 '매출')
		
		
		CellStyle style = wb.createCellStyle(); //셀 스타일 생성
		Font font = wb.createFont();
		font.setFontHeight((short)(14*16));//글자크기
		font.setFontName("맑은 고딕");//글씨체
		
		//자바의 배열처럼 첫번째 인덱스가 0부터 시작
		Row titleRow = sheet.createRow(0); //타이틀행을 생성. 첫번째줄이기때문에 0
		int titleColNum = 0; //첫번째 열이기 때문에 0
			Cell titleCell = titleRow.createCell(titleColNum); //첫번째행의 첫번째 열을 지정
			titleCell.setCellValue("조회하신 매출현황"); //setCellValue 셀에 값넣기
			titleRow.setHeight((short)400); //Row에서 setHeight를 하면 행높이가 조정된다.
			sheet.addMergedRegion(new CellRangeAddress(0,0,0,3)); //셀병합 세로1번째 가로 1~8번째열까지 병합
			//new CellRangeAddress(시작 row, 끝 row, 시작 col, 끝 col)
			
			style.setWrapText(true); //문자열을 입력할때 \n 같은 개행을 인식한다.
			style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//수직 가운데 정렬
			style.setAlignment(CellStyle.ALIGN_CENTER); //수평 가운데 정렬
			style.setFont(font); //스타일에 font 스타일 적용
			 
			CellStyle headStyle = wb.createCellStyle();
			headStyle.setBorderRight(HSSFCellStyle.BORDER_THIN); //오른쪽 테두리
			headStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN); //왼쪽 테두리
			headStyle.setBorderTop(HSSFCellStyle.BORDER_THIN); //상단 테두리
			headStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); //하단 테두리
			headStyle.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);
			headStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
			
			
			titleCell.setCellStyle(style);
			
			
			
			//입력받은 날짜 출력하기
			Row dayRow = sheet.createRow(1);
			int dayCol = 0;
			Cell dayCell = dayRow.createCell(dayCol); //두번째줄의 첫번째열을 셀로 지정
			dayCell.setCellValue("조회날짜 : "+orderSheetVO.getInputSDate()+" ~ "+orderSheetVO.getInputEDate()); //입력받은 날짜 출력
			
			//헤더 만들기
			Row headerRow = sheet.createRow(3); //네번째줄 생성
			Cell headerCell = headerRow.createCell(0);
			headerCell.setCellValue("날짜");
			headerCell.setCellStyle(headStyle);
			headerCell = headerRow.createCell(1);
			headerCell.setCellValue("공급가액");
			headerCell.setCellStyle(headStyle);
			headerCell = headerRow.createCell(2);
			headerCell.setCellValue("부가가치세");
			headerCell.setCellStyle(headStyle);
			headerCell = headerRow.createCell(3);
			headerCell.setCellValue("결제금액");
			headerCell.setCellStyle(headStyle);
			
			CellStyle dataStyle = wb.createCellStyle(); //데이터스타일은 테두리 만들기 세팅
			dataStyle.setBorderRight(HSSFCellStyle.BORDER_THIN); //오른쪽 테두리
			dataStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN); //왼쪽 테두리
			dataStyle.setBorderTop(HSSFCellStyle.BORDER_THIN); //상단 테두리
			dataStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN); //하단 테두리
		
		//데이터 입력하기
		int rowNum = 4;
		Row dataRow = null; //for문 돌릴려고
		Cell dataCell = null;
		
		for(int i =0; i<salesData.size(); i++) {
			dataRow = sheet.createRow(rowNum++); //for문돌면서 행1줄씩 추가
			
			dataCell = dataRow.createCell(0); //열 1줄씩 추가
			dataCell.setCellValue(salesData.get(i).getBuyDate()); //매출일
			dataCell.setCellStyle(dataStyle);//테두리 스타일 적용
			
			dataCell = dataRow.createCell(1);
			dataCell.setCellValue(Math.ceil(salesData.get(i).getTotalPrice()/1.1)); //공급가액 입력
			dataCell.setCellStyle(dataStyle);
			dataCell = dataRow.createCell(2);
			dataCell.setCellValue(salesData.get(i).getTotalPrice()-Math.ceil(salesData.get(i).getTotalPrice()/1.1)); //공급가액 입력
			dataCell.setCellStyle(dataStyle);
			dataCell = dataRow.createCell(3);
			dataCell.setCellValue(salesData.get(i).getTotalPrice()); //공급가액 입력
			dataCell.setCellStyle(dataStyle);
		}
		
		
		 dataRow = sheet.createRow(rowNum++); dataCell = dataRow.createCell(0);
		 dataCell.setCellValue("합계"); dataCell.setCellStyle(dataStyle); 
		 dataCell = dataRow.createCell(1);
		 dataCell.setCellFormula("SUM(B5:B"+(4+salesData.size())+")");
		 dataCell.setCellStyle(dataStyle); dataCell = dataRow.createCell(2);
		 dataCell.setCellFormula("SUM(C5:C"+(4+salesData.size())+")");
		 dataCell.setCellStyle(dataStyle); dataCell = dataRow.createCell(3);
		 dataCell.setCellFormula("SUM(D5:D"+(4+salesData.size())+")");
		 dataCell.setCellStyle(dataStyle);
		 
	 
		response.setContentType("ms-vnd/excel");
	    response.setHeader("Content-Disposition", "attachment;filename="+inputSDate+"~"+inputEDate+"sales.xls");
	    wb.write(response.getOutputStream());
		
	}
	
	
	
}