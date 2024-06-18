package com.code.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.code.service.CompanyIntroService;
import com.code.service.CompanyService;

@Controller
public class CompanyHireController {
	
	@Autowired
	CompanyService cservice;

	//채용공고에서 사용
	@Autowired
	CompanyIntroService ciservice;
	
	//잠깐 연습용 기업 마이페이지: 채용공고 리스트
	@GetMapping("/company/companyhire")
	public String comhire() {
			return "/companyhire/companyhire_gongolist"; 
	}

}
