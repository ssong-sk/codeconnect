package com.code.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.code.dto.RegisterDto;
import com.code.service.RegisterService;

@RestController
public class LoginRestController {

	@Autowired
	RegisterService service;
	
	@GetMapping("/member/login")
	public Map<String, String> loginprocess(String r_id,String r_pass,HttpSession session)
	{
		Map<String, String> map=new HashMap<>();
		
		int result=service.loginIdPassCheck(r_id, r_pass);
		
		if(result==1)
		{
			session.setMaxInactiveInterval(60*60*4);
			
			//로그인한 아이디로 정보얻어 세션에 저장
			RegisterDto mdto=service.getDataById(r_id);
			
			session.setAttribute("loginok", "yes");
			session.setAttribute("myid", r_id);
			session.setAttribute("loginname", mdto.getR_name());
			session.setAttribute("r_num", mdto.getR_num());
		
		}
		
		map.put("result", result==1?"success":"fail");
		
		return map;
	}
	
	@GetMapping("/member/logout")
	public void logoutprocess(HttpSession session)
	{
		//로그아웃시 제거할 세션
		session.removeAttribute("loginok");
		session.removeAttribute("myid");
		
		
	}
}
