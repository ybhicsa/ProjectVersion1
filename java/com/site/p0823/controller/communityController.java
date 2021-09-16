package com.site.p0823.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class communityController {

	
	//커뮤니티 메인
	@RequestMapping("communityMain")
	public String communityMain() {
		return "/community/communityMain";
	}
	
	//커뮤니티 서브
	@RequestMapping("communityDetails")
	public String communityDetails() {
		return "/community/communityDetails";
	}
	
	
}//class
