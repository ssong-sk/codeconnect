package com.code.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.IruckseoInsertDto;
import com.code.dto.RegisterDto;
import com.code.service.IruckseoInsertService;
import com.code.service.RegisterService;

@Controller
public class IruckseoHomeController {
	
	//이력서 service
	@Autowired
	IruckseoInsertService irservice;
	
	//로그인 service (로그인 세션 가져오기)
	@Autowired
	RegisterService reservice;
	
	//이력서 메인홈 띄우기
	@GetMapping("/resumehome/home")
	public ModelAndView hform(HttpSession session) {
		
		ModelAndView mview = new ModelAndView();
		
		RegisterDto rdto = new RegisterDto();
		IruckseoInsertDto irdto = new IruckseoInsertDto();
		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
		
		irdto.setR_num(r_num);
		
		// 회원정보 조회
		rdto =reservice.getDataByNum((String)session.getAttribute("r_num"));
		
		mview.addObject("rdto", rdto);
		
		mview.setViewName("/resumehome/iruckseohome");
		
		return mview;
	}

}
