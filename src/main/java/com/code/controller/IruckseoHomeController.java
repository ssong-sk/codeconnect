package com.code.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IruckseoHomeController {
	
	//이력서 메인홈 띄우기
	@GetMapping("/resumehome/home")
	public String hform() {
		
		return "/resumehome/iruckseohome";
	}

}
