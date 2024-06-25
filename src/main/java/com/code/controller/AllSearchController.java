package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.service.AllSearchService;

@Controller
public class AllSearchController {
	
	@Autowired
	AllSearchService aservice;
	
	@ResponseBody
	@GetMapping("/allsearch/hire")
	public List<HireDto> hireAllSearch(String searchword) {
      
		List<HireDto> hlist=aservice.hireAllSearch(searchword);
      
		return hlist;
	}
	
	@ResponseBody
	@GetMapping("/allsearch/cintro")
	public List<CompanyIntroDto> cintroAllSearch(String searchword) {
      
		List<CompanyIntroDto> cilist=aservice.cintroAllSearch(searchword);
      
		return cilist;
	}
}
