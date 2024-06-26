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
import com.code.service.CompanyIntroService;
import com.code.service.HireService;

@Controller
public class AllSearchController {
	
	@Autowired
	AllSearchService aservice;
	
	@Autowired
	HireService hservice;
	
	@Autowired
	CompanyIntroService ciservice;
	
	@GetMapping("/allsearch/main")
	public String allsearchmain(String searchword, Model model, HttpSession session) {
		List<HireDto> hlist = hservice.getHireList();
		int htotalcount = aservice.counthireAllSearch(searchword);
		
		List<CompanyIntroDto> cilist = ciservice.getAllCompanyIntros();
		
		model.addAttribute("hlist", hlist);
		model.addAttribute("htotalcount", htotalcount);
		model.addAttribute("searchword", searchword); // 검색어도 모델에 추가
		
		return "allsearch/allsearchmain";
	}
	
	@ResponseBody
	@GetMapping("/allsearch/hiresearch")
	public List<HireDto> hireAllSearch(String searchword) {
      
		List<HireDto> hlist=aservice.hireAllSearch(searchword);
      
		return hlist;
	}
	
	@ResponseBody
	@GetMapping("/allsearch/cintrosearch")
	public List<CompanyIntroDto> cintroAllSearch(String searchword) {
      
		List<CompanyIntroDto> cilist=aservice.cintroAllSearch(searchword);
      
		return cilist;
	}
}
