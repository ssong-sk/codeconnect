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
			
			//관리자로 로그인시 관리자 페이지로 리다이렉트 -> 삭제 금지
			if ("manager".equals(r_id)) {
				return "redirect:/manager/main";
		    }

			
  		session.setMaxInactiveInterval(30*30*1); //30분

			
			session.setAttribute("myid", r_id);
			session.setAttribute("loginok", "yes");
			session.setAttribute("saveok", cbsave);
			
			session.setAttribute("r_num", mdto.getR_num());
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
			session.setAttribute("r_job", mdto.getR_job());
			session.setAttribute("r_sogae", mdto.getR_sogae());
			session.setAttribute("r_exp", mdto.getR_exp());
			
			return "redirect:/";
			
		}else {
			return "/member/passfail";
		}
		
		
	}
	
	@GetMapping("/logoutprocess")
	public String logout(HttpSession session)
	{
		session.removeAttribute("loginok");
		session.removeAttribute("userNickname");
		session.removeAttribute("r_num");//LoginRestController에 이미 있지만, 계속 로그아웃해도 왠지 r_num이 안 지워져서 추가함.
		session.removeAttribute("myid");
		session.removeAttribute("r_name");
		session.removeAttribute("r_email");
		session.removeAttribute("r_hp");
		return "redirect:/";
	}
	
	
	
}
