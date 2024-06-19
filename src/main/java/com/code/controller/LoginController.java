package com.code.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.code.dto.RegisterDto;

import com.code.service.RegisterService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	RegisterService service;
	
	@GetMapping("/main")
	public String form(HttpSession session,Model model)
	{
		//폼의 아이디얻어줌
		String myid=(String)session.getAttribute("myid");
		//로그인중인지 아닌지
		String loginok=(String)session.getAttribute("loginok");
		
		//한번도 실행안하면 null
		if(loginok==null)
			return "/login/loginform";
		else {
			
			String name=service.getName(myid);
			model.addAttribute("name", name);
			return "/login/logoutform";
		}
		
	}
	
	@PostMapping("/loginprocess")
	public String loginprocess(@RequestParam String r_id,
			@RequestParam String r_pass,
			@RequestParam(required = false) String cbsave,
			HttpSession session,Model model)
	{
		
		int check=service.loginIdPassCheck(r_id, r_pass);
			
		if(check==1) {
			
			RegisterDto mdto = service.getDataById(r_id);
			
			session.setMaxInactiveInterval(60*60*8); //8시간
			
			session.setAttribute("myid", r_id);
			session.setAttribute("loginok", "yes");
			session.setAttribute("saveok", cbsave);
			
			session.setAttribute("r_name",mdto.getR_name());
			session.setAttribute("r_nickname", mdto.getR_nickname());
			session.setAttribute("r_birthday", mdto.getR_birthday());
			session.setAttribute("r_hp", mdto.getR_hp());
			session.setAttribute("r_zipcode",mdto.getR_zipcode());
			session.setAttribute("r_addr",mdto.getR_addr());
			session.setAttribute("r_addr_detail", mdto.getR_addr_detail());
			session.setAttribute("r_email",mdto.getR_email());
			session.setAttribute("r_gender", mdto.getR_gender());
			session.setAttribute("r_num", mdto.getR_num());
			
			return "/layout/main";
			
		}else {
			return "/member/passfail";
		}
		
		
	}
	
	@GetMapping("/logoutprocess")
	public String logout(HttpSession session)
	{
		session.removeAttribute("loginok");
		session.removeAttribute("userNickname"); //
		return "redirect:main";
	}
	
	
	
}
