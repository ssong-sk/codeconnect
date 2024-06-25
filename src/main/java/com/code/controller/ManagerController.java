package com.code.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {
	
	@GetMapping("/manager/main")
	public String main() {
		return "/manager/managermain";
	}
	
	@GetMapping("/manager/member")
	public String member() {
		return "/manager/managermember";
	}

}
