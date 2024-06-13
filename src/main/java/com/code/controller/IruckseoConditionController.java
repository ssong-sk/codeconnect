package com.code.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IruckseoConditionController {

	
	//이력서 현황 띄우기
	@GetMapping("/resumehome/conditionform")
	public String cform() {
		
		return "/resumehome/iruckseoconditionform";
	}
}
