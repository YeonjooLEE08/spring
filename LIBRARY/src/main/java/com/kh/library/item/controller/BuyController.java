package com.kh.library.item.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.item.service.BuyService;
import com.kh.library.item.service.CartService;
import com.kh.library.item.vo.BuyVO;
import com.kh.library.item.vo.BuyViewVO;
import com.kh.library.item.vo.CartVO;
import com.kh.library.item.vo.CartViewVO;
import com.kh.library.item.vo.OrderSheetVO;
import com.kh.library.member.service.MemberService;
import com.kh.library.member.vo.MemberVO;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/buy")
public class BuyController {

	@Resource(name = "buyService")
	private BuyService buyService;
	
	@Resource(name = "cartService")
	private CartService cartService;
	
	@Resource(name = "memberService")
	private MemberService memberService;

	//주문페이지로 이동
	@GetMapping("/buyPage")
	public String buyPage(Model model, HttpSession session) {
		String memId = ((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		
		//주문하기 목록 조회
		List<BuyViewVO> buyList = buyService.selectBuyViewList(memId);
		model.addAttribute("buyList", buyList);
		
		//구매가격
		int totalPrice = 0;
		for(BuyViewVO buy : buyList) {
			totalPrice = totalPrice + buy.getTotalPrice();
		}
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("mem",memberService.selectMyPageDetail(memId));
		
		return "item/buy";
	}
	
	//바로구매시 buy insert
	@ResponseBody
	@PostMapping("/insertBuyAtOnce")
	public void insertBuyAtOnce(BuyVO buyVO, HttpSession session) {
		String memId =((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
		int nextBuyNum = buyService.selectNextBuyNum();
		buyVO.setBuyNum(nextBuyNum);
		buyVO.setMemId(memId);
		buyService.insertBuyAtOnce(buyVO);
	}
	
	//장바구니에서 주문페이지로 이동시 buy insert
	@ResponseBody
	@PostMapping("/insertBuy")
	public void insertBuy(String data, HttpSession session) {
		System.out.println(data);
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		
		//다음 buynum 조회
		int nextBuyNum = buyService.selectNextBuyNum();
		
		List<Map<String, String>> list = JSONArray.fromObject(data);
		String[] itemCodeArr = new String[list.size()];
		int index=0;
		List<BuyVO> buyList = new ArrayList<BuyVO>();
		BuyVO buyVO = new BuyVO();
		
		for(Map<String, String> map : list) {
			System.out.println("itemCode : " + map.get("itemCode") + " / itemCnt=" + map.get("itemCnt"));
			
			BuyVO vo = new BuyVO();
			vo.setItemCode(map.get("itemCode"));
			vo.setItemCnt(Integer.parseInt(map.get("itemCnt")));
			vo.setMemId(memId);
			vo.setBuyNum(nextBuyNum++);
			
			buyList.add(vo);
			
			itemCodeArr[index++] = map.get("itemCode");
		}
		buyVO.setBuyList(buyList);
		
		//구매한 상품 장바구니에서 삭제
		CartVO cartVO = new CartVO();//memId, itemCode들
		cartVO.setMemId(memId);
		cartVO.setItemCodes(itemCodeArr);
		
		buyService.insertBuys(buyVO, cartVO);
	}
	
	//주문페이지에서 취소 또는 뒤로가기 클릭시 buy delete 및 cart insert
	@ResponseBody
	@PostMapping("/deleteBuy")
	public void deleteBuy(String data, HttpSession session) {
		System.out.println(data);
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		//다음 cartNum조회
		int nextcartNum = cartService.selectNextCartNum();
		
		List<Map<String, String>> list = JSONArray.fromObject(data);
		String[] itemCodeArr = new String[list.size()];
		int index=0;
		List<CartVO> cartList = new ArrayList<CartVO>();
		CartVO cartVO = new CartVO();
		
		for(Map<String, String> map : list) {
			System.out.println("itemCode : " + map.get("itemCode") + " / itemCnt=" + map.get("itemCnt"));
			
			CartVO vo = new CartVO();
			vo.setItemCode(map.get("itemCode"));
			vo.setItemCnt(Integer.parseInt(map.get("itemCnt")));
			vo.setMemId(memId);
			vo.setCartNum(nextcartNum++);
			cartList.add(vo);
			
			itemCodeArr[index++] = map.get("itemCode");
		}
		cartVO.setCartList(cartList);
		
		cartService.deleteBuys(cartVO, memId);
	}
	
	//구매완료시 buyUpdate
	@ResponseBody
	@PostMapping("/insertOrder")
	public String insertOrder(OrderSheetVO orderSheetVO, HttpSession session, Model model) {
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		orderSheetVO.setMemId(memId);
		orderSheetVO.setOrderNum(buyService.selectNextOrderNum());
		System.out.println(orderSheetVO.getOrderNum());
		buyService.insertOrder(orderSheetVO);
		return orderSheetVO.getOrderNum();
	}
	
	
	//구매완료페이지이동
	@GetMapping("/buyFin")
	public String buyFin(Model model, HttpSession session, OrderSheetVO orderSheetVO) {
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		orderSheetVO.setMemId(memId);
		model.addAttribute("buyer",buyService.selectOrder(orderSheetVO));
		return "item/buy_done";
	}
	
	//구매 주소를 현 멤버주소로 변경
	@ResponseBody
	@PostMapping("/updateMemAddr")
	public void updateMemAddr(MemberVO memberVO, HttpSession session) {
		String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
		memberVO.setMemId(memId);
		buyService.updateMemaddr(memberVO);
	}
	
	
	
	
	
	
	public String nowDate(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyymmdd");
		Calendar c1 = Calendar.getInstance();
		String strToday = sdf.format(c1.getTime());
		return strToday;
	}
}
