package com.kh.library.item.controller;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	
	
	
}