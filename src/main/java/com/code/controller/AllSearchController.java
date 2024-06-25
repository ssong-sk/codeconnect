package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.service.AllSearchService;

@Controller
public class AllSearchController {
	
	@Autowired
	AllSearchService aservice;
	
	@GetMapping("/allsearch/main")
	public String allsearchmain(Model model, HttpSession session) {

		return "allsearch/allsearchmain";
	}
	
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
