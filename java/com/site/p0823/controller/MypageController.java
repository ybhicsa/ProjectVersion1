package com.site.p0823.controller;


import java.text.DecimalFormat;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.p0823.Vo.Construction_InquiryVo;
import com.site.p0823.Vo.UserCartVo;
import com.site.p0823.service.MyPageService;
import com.site.p0823.service.StoreService;

@Controller
public class MypageController {

	@Autowired
	MyPageService myPageService;
	@Autowired
	StoreService storeService;
	
	DecimalFormat format = new DecimalFormat("###,###");

	@RequestMapping("myPage")
	public String myPage(Model model,@RequestParam String nickname) {
		//메인 시공문의 5개
		ArrayList<Construction_InquiryVo> list = null;
		list = myPageService.selectInquiryList(nickname);
		
		if(list.size()==0) {
			
			System.out.println("리스트"+list);
			
			//list = null;
		}
		model.addAttribute("list", list);
		return "/mypage/myPage";
	}
	//장바구니
	@RequestMapping("cart")
	public String cart(@RequestParam int s_id,Model model) {
		ArrayList<UserCartVo> Cartlist = myPageService.selectMyCartList(s_id);
		int All_price = 0; 
		String All_price2 = "";
		for(int i=0;i<Cartlist.size();i++) {
			Cartlist.get(i).setProduct_Price(Cartlist.get(i).getProduct_Num() * Cartlist.get(i).getProduct_Price());
			Cartlist.get(i).setProduct_Price2(format.format(Cartlist.get(i).getProduct_Price()));
			All_price += Cartlist.get(i).getProduct_Price();
		}
		All_price2 = (format.format(All_price));
	
		model.addAttribute("All_price", All_price2);
		model.addAttribute("Cartlist", Cartlist);
		return "/mypage/cart";
	}
	
	//구매내역
	@RequestMapping("buyDetails")
	public String buyDetails() {
		return "/mypage/buyDetails";
	}
	
	//시공문의
	@RequestMapping("myInquiries")
	public String myInquiries() {
		return "/mypage/myInquiries";
	}
	
	//시공업체 등록 이동(컴퍼니 컨트롤로에서 정보 넣음)
	@RequestMapping("userInfoModify")
	public String userInfoModify() {
		return "/mypage/userInfoModify";
	}

}//class
