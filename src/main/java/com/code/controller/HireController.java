package com.code.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;


import com.code.dto.HireDto;
import com.code.service.CompanyService;

@Controller
public class HireController {
	
	@Autowired
	CompanyService com_service;
	
	@GetMapping("/hire/insert")
	public String hireInsert(@ModelAttribute("hdto") HireDto dto) {
		
		return null;
	}
	
	

}
