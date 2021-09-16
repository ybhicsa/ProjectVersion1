package com.site.p0823.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.p0823.Vo.Delivery_StatusVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.Vo.user_DetailsVo;
import com.site.p0823.service.MyPageService;
import com.site.p0823.service.StoreService;
import com.site.p0823.service.UserService;

@Controller
public class StoreController {

	@Autowired
	StoreService storeService;
	@Autowired
	MyPageService myPageService;
	@Autowired 
	UserService UserService;
	
	DecimalFormat format = new DecimalFormat("###,###");
	
	
	//스토어 메인
	@RequestMapping("store1")
	public String store1(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<ProductVo> list = storeService.producerAllList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		model.addAttribute("list", list);
		return "/store/store1";
	}
	
	
	//스토어 전체 리스트
	@PostMapping("alllistStore")
	@ResponseBody
	public ArrayList<ProductVo> allList(){
		ArrayList<ProductVo> list = storeService.producerAllList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	
	//스토어 가구 리스트
	@PostMapping("furniturelistStore")
	@ResponseBody
	public ArrayList<ProductVo> furniturelist() {
		ArrayList<ProductVo> list = storeService.selectFurnitureList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 가전 리스트
	@PostMapping("applianceslistStore")
	@ResponseBody
	public ArrayList<ProductVo> applianceslist() {
		ArrayList<ProductVo> list = storeService.selectappliancesList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 페브릭 리스트
	@PostMapping("FabriclistStore")
	@ResponseBody
	public ArrayList<ProductVo> Fabriclist() {
		ArrayList<ProductVo> list = storeService.selectFabricList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 페브릭 리스트
	@PostMapping("supplieslistStore")
	@ResponseBody
	public ArrayList<ProductVo> supplieslist() {
		ArrayList<ProductVo> list = storeService.selectSuppliesList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	//스토어 반려동물 리스트
	@PostMapping("PatlistStore")
	@ResponseBody
	public ArrayList<ProductVo> Patlist() {
		ArrayList<ProductVo> list = storeService.selectPatList();
		for(int i=0;i<list.size();i++) {
			list.get(i).setProduct_Price2(format.format(list.get(i).getProduct_Price()));
		}
		return list;
	}
	
	
	//스토어 상세
	@RequestMapping("store2")
	public String store2(Model model, @RequestParam int product_Number) {
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
		model.addAttribute("productVo", productVo);
		return "/store/store2";
	}
	
	//상품상세 카운트 증가
	@RequestMapping("QuantityUp")
	@ResponseBody
	public ProductVo QuantityUp(@RequestParam int product_Number, @RequestParam int product_Price) {
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		productVo.setProduct_Price(productVo.getProduct_Price()+product_Price);
		productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
		return productVo;
	}
	//상품상세 카운트 다운
	@RequestMapping("QuantityDown")
	@ResponseBody
	public ProductVo QuantityDown(@RequestParam int product_Number, @RequestParam int product_Price) {
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		productVo.setProduct_Price(product_Price-productVo.getProduct_Price());
		productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
		return productVo;
	}
	
	
	
	//장바구니
	@PostMapping("cartGo")	
	@ResponseBody
	public int cart(Model model,@RequestParam int product_Number,@RequestParam int s_id, @RequestParam(defaultValue = "1") int count) {
		
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		ArrayList<UserCartVo> Cartlist = myPageService.selectMyCartList(s_id);
		int result = 0;
		System.out.println("사이즈" +Cartlist.size());
		for(int i=0;i<Cartlist.size();i++) {
			if(Cartlist.get(i).getProduct_Number() == product_Number) {
				result = myPageService.updateCartGo(productVo,s_id,count);	
				result = 1;
			}
		}
		if(result == 0) {
			result = myPageService.insertCartGo(productVo,s_id,count);
		}
		model.addAttribute("productVo", productVo);
		model.addAttribute("result", result);
		
		//return "redirect:/store1";
		return result;
	}
	
//	//결제 상세 페이지
//	@RequestMapping("ProductOrder")	
//	public String ProductOrder() {
//		return "/store/ProductOrder";
//	}
	
	//결제 페이지 이동
	//상품주문
	@RequestMapping("ProductOrder")
	public String productOrder(@RequestParam int s_id, @RequestParam int product_Number, 
			@RequestParam(defaultValue = "1") int count, Model model, user_DetailsVo user_DetailsVo) {
		//주소값 있으면 뽑아오고 없으면 저장 될수있게 id 기준
		user_DetailsVo dateYes = UserService.selectInformationYes(s_id);
		
		//배송에서 이메일을 가져오기 위한 부분
		UserVo userVo = UserService.selectUserOneSearch(s_id);
		int Cut = userVo.getUser_email().indexOf("@");
		String mail = userVo.getUser_email().substring(0, Cut);
		String mail2 = userVo.getUser_email().substring(Cut+1);
		
		//스토어 상세부분 
		ProductVo productVo = storeService.producerOneSearch(product_Number);
		int onePrice = productVo.getProduct_Price();
		String onePrice2 = format.format(productVo.getProduct_Price());
		productVo.setProduct_Price(productVo.getProduct_Price()*count);
		productVo.setProduct_Price2(format.format(productVo.getProduct_Price()));
		
		model.addAttribute("user_DetailsVo",dateYes);
		model.addAttribute("mail",mail);
		model.addAttribute("mail2",mail2);
		model.addAttribute("productVo",productVo);
		model.addAttribute("count",count);
		model.addAttribute("onePrice2",onePrice2);
		return "/store/ProductOrder";
	}
	
	
	//결제 완료 페이지
	@RequestMapping("ProductOrderOk")
	public String ProductOrderOk (Model model, user_DetailsVo user_DetailsVo, @RequestParam int s_id,
			@RequestParam int count, ProductVo productVo, @RequestParam String other) {
		
		//주소값 있으면 뽑아오고 없으면 저장 될수있게 id 기준
		user_DetailsVo dateYes = UserService.selectInformationYes(s_id);
		if(dateYes == null) { 
			UserService.insertDetailsSet(user_DetailsVo,s_id); 
		}
		//결제 완료 됐으면 배송현황 테이블 이동
		storeService.insertDeliverySetAll(s_id,user_DetailsVo,productVo,count,other);
		
		
		return "/store/ProductOrderOk";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//class
