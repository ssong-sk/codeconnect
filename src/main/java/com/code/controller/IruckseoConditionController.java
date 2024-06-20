package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.service.IruckseoInsertService;
import com.code.service.RegisterService;

@Controller
public class IruckseoConditionController {

	//이력서 서비스 등록
	@Autowired
	IruckseoInsertService irservice;
	
	@Autowired
	RegisterService reservice;
	
	//이력서 현황 list 띄우기
	@GetMapping("/resumehome/conditionform")
	public String cform(@ModelAttribute("pedto") IruckseoInsertDto pedto, Model model) {
		
		//갯수
		int totalCount = irservice.getPersonalCount();
		
		//int pe_num = 1;
		
		//이력서 전체리스트
		List<IruckseoInsertDto> pelist = irservice.allPersonalDatas();
		
		//희망근무조건 전체리스트 
		//List<IruckseoHopeDto> holist = irservice.allHopeDatas();
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pelist", pelist);
		//mview.addObject("holist", holist);
		
		
		return "/resumehome/iruckseoconditionform";
	}
}
