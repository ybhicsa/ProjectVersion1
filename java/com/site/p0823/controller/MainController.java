package com.site.p0823.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.p0823.Vo.CompanyVo;
import com.site.p0823.Vo.ProductVo;
import com.site.p0823.Vo.UserVo;
import com.site.p0823.service.CompanyService;
import com.site.p0823.service.StoreService;
import com.site.p0823.service.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userService;
	@Autowired
	private StoreService storeService;
	@Autowired
	CompanyService companyService;
	
	@RequestMapping("index")
	public String index(Model model) {
		ArrayList<CompanyVo> clist = companyService.selectCompanyList();
		ArrayList<ProductVo> plist = storeService.producerAllList();
		model.addAttribute("companyList", clist);
		model.addAttribute("productList", plist);
		return "index";
	}
	
	@RequestMapping("loginOut")
	public String loginOut() {
		return "/login/loginOut";
	}
	
	@RequestMapping("login")
	public String login() {
		return "/login/login";
	}
	@GetMapping("loginOk")
	public String loginOk() {
		return "/login/loginOk";
	}
	@GetMapping("test")
	public String test() {
		return "/store/test";
	}


	//로그인
	@PostMapping("login")
	public String login(HttpServletRequest request,@RequestParam String in_userEmail,
			@RequestParam String in_userPw, Model model) {
		HttpSession session = request.getSession();
		UserVo userVo=null;
		userVo = userService.selectLoginOne(in_userEmail,in_userPw);	
		if(userVo==null) {
			session.setAttribute("session_flag", "fail");
			return "redirect:/loginOk";
		} else {
			session.setAttribute("session_flag", "success");
			session.setAttribute("session_mail", userVo.getUser_email());
			session.setAttribute("s_ID", userVo.getUser_id());
			session.setAttribute("session_nickName", userVo.getUser_nickname());
		}
		if(userVo.getUser_id() == 1) {
			session.setAttribute("session_right", "Manager");
		}
		model.addAttribute("userVo", userVo);
		return "redirect:/loginOk";
		
	}
	
	@RequestMapping("user_Join")
	public String user_Join() {
		return "/join/user_Join";
	}

	//회원가입
	@PostMapping("user_Join")
	public String user_Join(@RequestParam String user_email,@RequestParam String email2,
			@RequestParam String user_pw,@RequestParam String user_nickname,@RequestParam(value = "snsCheck", defaultValue = "0") String snsCheck) {
		
		System.out.println(snsCheck);
		user_email = user_email+"@"+email2;
		int smsreceiptconsent= Integer.parseInt(snsCheck);
		
		UserVo userVo = new UserVo(user_email,user_pw,user_nickname,smsreceiptconsent);
		
		userService.insertUserAdd(userVo);
		
		return "redirect:/index";
	}
	
	//컴퍼니 올 리스트
	@PostMapping("companyAll")
	@ResponseBody
	public ArrayList<CompanyVo> companyAll(){
		ArrayList<CompanyVo> clist = companyService.selectCompanyList();
		return clist;
	}
	//컴퍼니 원룸 리스트
	@PostMapping("oneAll")
	@ResponseBody
	public ArrayList<CompanyVo> oneAll(){
		ArrayList<CompanyVo> clist = companyService.oneAll();
		return clist;
	}
	//컴퍼니 아파트 리스트
	@PostMapping("aptAll")
	@ResponseBody
	public ArrayList<CompanyVo> aptAll(){
		ArrayList<CompanyVo> clist = companyService.aptAll();
		return clist;
	}
	//컴퍼니 주택 리스트
	@PostMapping("solAll")
	@ResponseBody
	public ArrayList<CompanyVo> solAll(){
		ArrayList<CompanyVo> clist = companyService.solAll();
		return clist;
	}
	
	
	//스토어 가구 리스트
	@PostMapping("furniturelist")
	@ResponseBody
	public ArrayList<ProductVo> furniturelist() {
		ArrayList<ProductVo> list = storeService.selectFurnitureList();
		return list;
	}
	//스토어 가전 리스트
	@PostMapping("applianceslist")
	@ResponseBody
	public ArrayList<ProductVo> applianceslist() {
		ArrayList<ProductVo> list = storeService.selectappliancesList();
		return list;
	}
	//스토어 페브릭 리스트
	@PostMapping("Fabriclist")
	@ResponseBody
	public ArrayList<ProductVo> Fabriclist() {
		ArrayList<ProductVo> list = storeService.selectFabricList();
		return list;
	}
	//스토어 반려용품 리스트
	@PostMapping("Patlist")
	@ResponseBody
	public ArrayList<ProductVo> Patlist() {
		ArrayList<ProductVo> list = storeService.selectPatList();
		return list;
	}
	
	
}//class
