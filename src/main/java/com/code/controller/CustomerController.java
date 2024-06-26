package com.code.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CustomerDto;
import com.code.mapper.CustomerMapperInter;

@Controller
public class CustomerController {

	@Autowired
	CustomerMapperInter mapper;
	
	@GetMapping("/customer/noticelist")
	public ModelAndView list() {
		ModelAndView mview = new ModelAndView();
		
		int totalCount = mapper.getTotalCount();
		List<CustomerDto> list = mapper.getAllDatas();
		
		mview.addObject("totalCount", totalCount);
		mview.addObject("list", list);
		
		mview.setViewName("customer/noticelist");
		
		return mview;
	}
	
	
}
