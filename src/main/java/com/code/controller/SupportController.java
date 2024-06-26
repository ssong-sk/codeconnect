package com.code.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.code.dto.HireDto;
import com.code.dto.SupportDto;
import com.code.service.HireService;
import com.code.service.SupportService;

@Controller
public class SupportController {

	@Autowired
	SupportService sservice;
	
	@Autowired
	HireService hservice;
	
	@ResponseBody
	@PostMapping("/support/insert")
	public void supportInsert(@ModelAttribute("sdto") SupportDto sdto, HttpSession session,
			@RequestParam(value = "h_num", required = false) Integer h_num) {
		
		int r_num = Integer.parseInt((String)session.getAttribute("r_num")) ;
		HireDto hdto = hservice.getHireData(h_num);
		
		sdto.setR_num(r_num);
		sdto.setH_num(hdto.getH_num());
		sdto.setC_num(hdto.getH_c_num());
		
		sservice.insertSupport(sdto);
	}
}
