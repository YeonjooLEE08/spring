package com.kh.library.item.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.library.item.service.CartService;
import com.kh.library.item.vo.CartVO;
import com.kh.library.item.vo.CartViewVO;
import com.kh.library.member.vo.MemberVO;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Resource(name = "cartService")
	private CartService cartService;
	//아이템 장바구니 insert
		@ResponseBody
		@PostMapping("/insertCart") //아이템코드, 아이템갯수, 회원아이디
		public void insertCart(CartVO cartVO, HttpSession session) {
			String memId =((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			cartVO.setMemId(memId);
			cartService.insertCart(cartVO);
		}
		
		//장바구니로 이동
		@GetMapping("/cartView")
		public String cart(Model model, HttpSession session) {
			String memId =((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			
			//장바구니 목록 조회
			List<CartViewVO> carList = cartService.selectCart(memId);
			model.addAttribute("cartList", carList);
			
			//구매가격
			int totalPrice = 0;
			for(CartViewVO cart : carList) {
				totalPrice = totalPrice + cart.getTotalPrice();
			}
			model.addAttribute("totalPrice", totalPrice);
			
			return "item/cart";
		}
		
		//장바구니 건별삭제
		@GetMapping("/deleteCart")
		public String deleteCart(CartVO cartVO, HttpSession session) {
			String memId =((MemberVO)(session.getAttribute("loginInfo"))).getMemId();
			cartVO.setMemId(memId);
			cartService.deleteCart(cartVO);
			
			return "redirect:/cart/cartView";
		}

		//장바구니 상품수량변경
		@ResponseBody
		@PostMapping("/updateitemCnt")
		public void updateitemCnt(CartVO cartVO, HttpSession session) {
			String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
			cartVO.setMemId(memId);
			cartService.updateCartCnt(cartVO);
		}
		
		
		//장바구니 선택삭제
		@GetMapping("/deleteCarts")
		public String deleteCarts(CartVO cartVO, HttpSession session) {
			String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
			cartVO.setMemId(memId);
			cartService.deleteCarts(cartVO);
			return "redirect:/cart/cartView";
		}
		
		//장바구니비우기
		@GetMapping("/deleteAllCart")
		public String deleteAllCart(HttpSession session) {
			String memId = ((MemberVO)session.getAttribute("loginInfo")).getMemId();
			cartService.deleteAllCart(memId);
			return "redirect:/cart/cartView";
		}
}

