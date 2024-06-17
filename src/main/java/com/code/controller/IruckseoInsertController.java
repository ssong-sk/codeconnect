package com.code.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.IruckseoSchoolDto;
import com.code.service.IruckseoInsertService;

@Controller
public class IruckseoInsertController {
	
	//school service
	@Autowired
	IruckseoInsertService scservice;
	
	
	@GetMapping("/resumehome/list")
	public ModelAndView list() {
		
		ModelAndView mview = new ModelAndView();
		
		return mview;
	}
	
	//이력서 등록 폼
	@GetMapping("/resumehome/form")
	public String form() {
		
		return "/resumehome/iruckseoform";
	}
	
	//school insert 하기
	@PostMapping("/resumehome/schoolinsert")
	@ResponseBody
	public Map<String, String> schoolinsert(@RequestBody IruckseoSchoolDto scdto) {
	    Map<String, String> response = new HashMap<>();

	    scservice.insertSchool(scdto);

		return response;
	}

}
