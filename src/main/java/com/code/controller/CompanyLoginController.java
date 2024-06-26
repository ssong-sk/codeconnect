package com.code.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.code.dto.CompanyDto;
import com.code.service.CompanyService;




@Controller
public class CompanyLoginController {

	
	@Autowired
	CompanyService cservice;
	
	//임시 제작 : 기업 로그인 페이지 불러오기
	@GetMapping("/imsiloginpage")
	public String imsiloginpage() {
		return "/companylogin/companyloginform"; //앞에 '/'있는게 최신입니다.
	}

	//아직 없어!
	@GetMapping("/company/main")
	public String form(HttpSession session,Model model)
	{
		//폼의 아이디얻어줌
		String c_myid=(String)session.getAttribute("c_myid");
		//로그인중인지 아닌지
		String c_loginok=(String)session.getAttribute("c_loginok");

		
		//한번도 실행안하면 null
		if(c_loginok==null)
			return "/login/loginform";
		else {
			
			CompanyDto dto = cservice.getDataById(c_myid);
			String c_num=dto.getC_num();
			
			//String c_name=cservice.getCompanyName(c_myid);
			//model.addAttribute("c_name", c_name);
			return "/company/companymypage";
		}
		
	}
	
	
	
	@PostMapping("/company/loginprocess")
	public String loginprocess(@RequestParam String c_id,
			@RequestParam String c_pass,
			@RequestParam(required = false) String c_cbsave,
			HttpSession session,Model model)
	{
		
		int check=cservice.loginIdPassCheck(c_id, c_pass);
		
		if(check==1) {
			
			session.setMaxInactiveInterval(60*60*8); //8시간
			
			session.setAttribute("c_myid", c_id);
			session.setAttribute("c_loginok", "yes");
			session.setAttribute("c_saveok", c_cbsave);
			
			CompanyDto cdto=cservice.getDataById(c_id);
			
			session.setAttribute("c_loginname", cdto.getC_name());
			
			return "/company/companymypage";
			
		}else {
			return "/companylogin/passfail";
		}
		
		
	}
	

	@GetMapping("/company/logoutprocess")
	public String logout(HttpSession session)
	{
		//기업 로그아웃시 세션 제거용
		session.removeAttribute("c_loginok");
		session.removeAttribute("c_loginname");
		session.removeAttribute("c_myid");
		return "redirect:main";
	}
	
}
