package com.kh.library.item.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kh.library.admin.service.ItemAdminService;
import com.kh.library.item.service.ItemService;
import com.kh.library.item.vo.ItemCategoryVO;
import com.kh.library.item.vo.ItemImgVO;
import com.kh.library.item.vo.ItemVO;

@Controller
@RequestMapping("/item")
public class ItemController {
	
	@Resource(name = "itemAdminService")
	private ItemAdminService itemAdminService;
	@Resource(name = "itemService")
	private ItemService itemService;

	//아이템 조회
	@GetMapping("/itemList")
	public String itemList(Model model, ItemVO itemVO) {
		model.addAttribute("itemList",itemService.selectItems(itemVO));
		model.addAttribute("cateList",itemService.selectItemCategory());
	
		return "item/item_list";
	}
	//아이템 검색
	@PostMapping("/searchItem")
	public String searchItem(Model model, String keyword) {
		model.addAttribute("itemList",itemService.searchItem(keyword));
		model.addAttribute("itemCnt",itemService.searchItemCnt(keyword));
		model.addAttribute("keyword",keyword);
		return "item/search_item";
	}
	
	//아이템 상세조회
	@GetMapping("/itemDetail")
	public String itemDetail(String itemCode, Model model) {
		System.out.println(itemCode);
		model.addAttribute("item",itemService.selectItemDetail(itemCode));
		model.addAttribute("cateList",itemService.selectItemCategory());
		return "item/item_details";
	}
	
	//아이템 관리페이지이동
	@GetMapping("/itemManage")
	public String itemManage(Model model, ItemVO itemVO) {
		model.addAttribute("itemList",itemService.selectItems(itemVO));
		model.addAttribute("cateList",itemService.selectItemCategory());
		
		return "admin/item_manage";
	}
	
	//아이템등록양식이동
	@GetMapping("/insertItem")
	public String insertItemForm(Model model) {
		model.addAttribute("cateList",itemService.selectItemCategory());
		return "admin/add_item";
	}
	
	//아이템 등록하기
	@PostMapping("/insertItem")
	public String insertItem(ItemVO itemVO, MultipartHttpServletRequest multi) {
		//이미지저장공간세팅
		List<ItemImgVO> imgList = new ArrayList<ItemImgVO>();
		ItemImgVO itemImgVO = new ItemImgVO();
		//다음에 들어갈 itemCode, itemImgCode 조회
		String nextItemCode = itemAdminService.selectNextItemCode();
		int nextItemImgCode = itemAdminService.selectNextItemImgCode();
		
		//파일업로드
		Iterator<String> inputTagNames = multi.getFileNames();
		String uploadPath = "C:\\Users\\fierc\\OneDrive\\Desktop\\workspaceSTS\\LIBRARY\\src\\main\\webapp\\resources\\images\\item\\";
		
		while(inputTagNames.hasNext()) {
			String inputTagName = inputTagNames.next();
			
			// 다중첨부
			if(inputTagName.equals("subImg")) {
				List<MultipartFile> fileList = multi.getFiles(inputTagName);
				for(MultipartFile file : fileList) {
					//원본파일명
					String originFileName = file.getOriginalFilename();
			
					if(!originFileName.equals("")) {
						//첨부할 파일명
						String attachedFileName = System.currentTimeMillis()+"_"+originFileName;
						
						try {
							file.transferTo(new java.io.File(uploadPath+attachedFileName));
							ItemImgVO vo = new ItemImgVO();
							vo.setItemImgCode(nextItemImgCode++);
							vo.setItemOriginName(originFileName);
							vo.setItemAtImgName(attachedFileName);
							vo.setIsMain("N");
							vo.setItemCode(nextItemCode);
							imgList.add(vo);
						} catch (IllegalStateException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						}
						
					}
				}
			}
			//단일첨부
			else {
				MultipartFile file = multi.getFile(inputTagName);
				String originFileName = file.getOriginalFilename();
				
				if(!originFileName.equals("")) {
					String attachedFileName = System.currentTimeMillis()+"_"+originFileName;
					
					try {
						file.transferTo(new java.io.File(uploadPath+attachedFileName));		
						ItemImgVO vo = new ItemImgVO();
						vo.setItemImgCode(nextItemImgCode++);
						vo.setItemOriginName(originFileName);
						vo.setItemAtImgName(attachedFileName);
						vo.setIsMain("Y");
						vo.setItemCode(nextItemCode);
						imgList.add(vo);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			} 		
		}//--이미지첨부끝!//	
		
		//굿즈 insert
		itemVO.setItemCode(nextItemCode);
		itemImgVO.setItemImgList(imgList);
		itemAdminService.insertItem(itemVO, itemImgVO);
		
		return "redirect:/item/itemManage";
	}
	//아이템 수정페이지 이동
	@GetMapping("/updateItemForm")
	public String updateItemForm(String itemCode, Model model) {
		model.addAttribute("item",itemService.selectItemDetail(itemCode));
		model.addAttribute("cateList",itemService.selectItemCategory());
		return "admin/update_item";
	}
	//아이템 수정
	@PostMapping("/updateItem")
	public String updateItem(ItemVO itemVO, MultipartHttpServletRequest multi) {
		itemAdminService.updateItem(itemVO);
		
		
		return "redirect:/item/itemManage";
	}
	
	//아이템 단일삭제
	@GetMapping("/itemDelete")
	public String itemDelete(ItemVO itemVO) {
		itemAdminService.updateIsDeleteItem(itemVO);
		return "redirect:/item/itemManage";
	}
	
	//아이템 선택삭제
	@GetMapping("/deleteItems")
	public String deleteItems(ItemVO itemVO) {
		itemAdminService.updateIsDeleteItems(itemVO);
		return "redirect:/item/itemManage";
	}
	
	//아이템 카테고리관리
	@GetMapping("/itemCateManage")
	public String itemCateManage(Model model, String add) {
		model.addAttribute("cateList",itemService.selectItemCategory());
		model.addAttribute("add",add);
		return "admin/item_cate_manage";
	}
	
	//아이템 카테고리 추가
	@PostMapping("/addCategory")
	public String addCategory(ItemCategoryVO itemCategoryVO) {
		itemCategoryVO.setCateCode(itemAdminService.selectNextItemCateCode());
		itemAdminService.insertItemCate(itemCategoryVO);
		return "redirect:/item/itemCateManage";
	}
	
	//아이템 카테고리 수정
	@PostMapping("/cateUpdate")
	public String cateUpdate(ItemCategoryVO itemCategoryVO) {
		itemAdminService.updateCategory(itemCategoryVO);
		return "redirect:/item/itemCateManage";
	}
	
	//아이템 카테고리 삭제
	@GetMapping("/deleteCate")
	public String deleteCate(ItemCategoryVO itemCategoryVO) {
		itemAdminService.updateIsDelete(itemCategoryVO);
		return "redirect:/item/itemCateManage";
	}
	
	
}