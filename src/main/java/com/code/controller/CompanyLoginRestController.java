package com.code.controller;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.code.dto.CompanyDto;
import com.code.service.CompanyService;



@RestController
public class CompanyLoginRestController {

	
	@Autowired
	CompanyService cservice;
	
	@GetMapping("/company/login")
	public Map<String, String> loginprocess(String c_id,String c_pass,HttpSession session)
	{
		Map<String, String> map=new HashMap<>();
		
		int result=cservice.loginIdPassCheck(c_id, c_pass);
		
		if(result==1)
		{
			session.setMaxInactiveInterval(60*60*4);
			
			//로그인한 아이디로 정보얻어 세션에 저장
			CompanyDto cdto=cservice.getDataById(c_id);
			
			session.setAttribute("c_loginok", "yes");
			session.setAttribute("c_myid", c_id);
			session.setAttribute("c_loginname", cdto.getC_name());
		
		}
		
		map.put("result", result==1?"success":"fail");
		
		return map;
	}
	
	@GetMapping("/company/logout")
	public void logoutprocess(HttpSession session)
	{
		//로그아웃시 제거할 세션
		session.removeAttribute("c_loginok");
		session.removeAttribute("c_myid");
		session.removeAttribute("c_loginname");
	}
	

}
