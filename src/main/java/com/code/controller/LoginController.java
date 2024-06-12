package com.code.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
//		System.out.println("id :" + r_id);
//		System.out.println("pass: " + r_pass);
		
		
		if(check==1) {
			
			session.setMaxInactiveInterval(60*60*8); //8시간
			
			session.setAttribute("myid", r_id);
			session.setAttribute("loginok", "yes");
			session.setAttribute("saveok", cbsave);

			return "redirect:main";
			
		}else {
			return "/member/passfail";
		}
		
		
	}
	
	@GetMapping("/logoutprocess")
	public String logout(HttpSession session)
	{
		session.removeAttribute("loginok");
		return "redirect:main";
	}
	
	
	
}
