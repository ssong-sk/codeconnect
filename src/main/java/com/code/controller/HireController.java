package com.code.controller;

import java.util.List;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.HireDto;
import com.code.service.CompanyIntroService;
import com.code.service.CompanyService;
import com.code.service.HireService;

@Controller
public class HireController {
	
	@Autowired
	CompanyService com_service;
	
	@Autowired
	HireService hservice;
	
  @GetMapping("/hire/main")
  public String hireMain(@ModelAttribute("hdto") HireDto dto, Model model) {      

    List<HireDto> hlist = hservice.getHireList();
    model.addAttribute("hlist", hlist);

    return "hire/hiremain";
  }

	
	@ResponseBody
	@GetMapping("/hire/search")
	public List<HireDto> hireSearch(String search_job) {
		
		List<HireDto> slist=hservice.searchHire(search_job);
		
		return slist;
	}
}
