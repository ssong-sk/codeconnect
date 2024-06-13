package com.code.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.IruckseoInsertDto;
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
	public ModelAndView form() {
		
		ModelAndView mview = new ModelAndView();
		
		IruckseoInsertDto irdto = new IruckseoInsertDto();
		//personal pe_num 등록하기 insert
		scservice.insertPersonal(irdto);
		
		
		//school list 띄우기
		//List<IruckseoSchoolDto> sclist = scservice.allSchoolDatas();
		
		//mview.addObject("sclist", sclist);
		mview.addObject("irdto", irdto);
		
		//포워드
		mview.setViewName("/resumehome/iruckseoform");
		
		return mview;
	}
	
	//학력 school insert 하기
	@PostMapping("/resumehome/schoolinsert")
	@ResponseBody
	public Map<String, Object> schoolinsert(@RequestBody IruckseoSchoolDto scdto) {
		
	    Map<String, Object> scmap = new HashMap<>();

	    scservice.insertSchool(scdto);
	    
	    List<IruckseoSchoolDto> sclist = scservice.allSchoolDatas(scdto);
	    
	    scmap.put("sclist", sclist);
	    scmap.put("scdto", scdto);
	    

		return scmap;
	}
	
	
	//학력 school 수정하기
	
	//학력 school 삭제하기
    @GetMapping("resumehome/schooldelete")	
    @ResponseBody
    public void schooldelete(@RequestParam int sc_num) {
    	
    	scservice.deleteSchool(sc_num);
    }
	}
