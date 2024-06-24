package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.HireDto;
import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoPortfolioDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSelfDto;
import com.code.dto.IruckseoSpecDto;
import com.code.dto.RegisterDto;
import com.code.service.CompanyService;
import com.code.service.HireService;
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
	
	//기업 service
	@Autowired
	CompanyService com_service;
	
	//공고 service
	@Autowired
	HireService hservice;
	
	//이력서 메인홈 띄우기
	@GetMapping("/resumehome/home")
	public ModelAndView hform(HttpSession session) {
		
		ModelAndView mview = new ModelAndView();
		
		//세션 가지고 오기
		RegisterDto rdto = new RegisterDto();
		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
		rdto =reservice.getDataByNum((String)session.getAttribute("r_num"));
		
		//이력서현황 갯수
		int totalCount = irservice.getPersonalCount(r_num);
		mview.addObject("totalCount", totalCount);
		
		// 회원정보 조회
		IruckseoInsertDto irdto = new IruckseoInsertDto();
		irdto.setR_num(r_num);
		
		mview.addObject("rdto", rdto);
		
		//pe 이력서 정보 조회 및 추가
  		//IruckseoInsertDto pedto = irservice.Personallist(pe_num);
  		//mview.addObject("pedto", pedto);
		
		//채용공고 정보 조회 및 추가
		List<HireDto> hlist = hservice.getHireList();
	    mview.addObject("hlist", hlist);
		
		mview.setViewName("/resumehome/iruckseohome");
		
		//스크랩
        List<HireDto> userScraps = hservice.getUserScraps(r_num);
        mview.addObject("userScraps", userScraps);
		
		return mview;
	}
	
	//이력서 현황 list 띄우기
	@GetMapping("/resumehome/conditionform")
	public String cform(@ModelAttribute("pedto") IruckseoInsertDto pedto, Model model, HttpSession session) {
		
		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
		//갯수
		int totalCount = irservice.getPersonalCount(r_num);
		
		//이력서 전체리스트
		List<IruckseoInsertDto> pelist = irservice.allPersonalDatas(r_num);
		
		//희망근무조건 전체리스트 
		//List<IruckseoHopeDto> holist = irservice.allHopeDatas();
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("pelist", pelist);
		//mview.addObject("holist", holist);
		
		
		return "/resumehome/iruckseoconditionform";
	}
	
	//이력서 삭제
    @GetMapping("/resumehome/personaldelete")	
    @ResponseBody
    public String personaldelete(@RequestParam int pe_num) {
    	
    	irservice.deletePersonal(pe_num);
    	
    	return null;
    	
    }
    
    //이력서 전체 리스트 띄우기
  	@GetMapping("/resumehome/iruckseolist")
  	public ModelAndView iruckseolist(@RequestParam int pe_num ,  HttpSession session ) {
  		
  		ModelAndView mview = new ModelAndView();
  		IruckseoInsertDto irdto = new IruckseoInsertDto();
  		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
  		
  		// 회원정보 조회
  		RegisterDto rdto =reservice.getDataByNum((String)session.getAttribute("r_num"));
  		 
  		//인적사항
  		IruckseoInsertDto pedto = irservice.Personallist(pe_num);
  		
  		//학력
  		List<IruckseoSchoolDto> sclist = irservice.Schoollist(pe_num);
  		
  		//경력
  		List<IruckseoCareerDto> calist = irservice.Careerlist(pe_num);
  		
  		//경험/활동/교육
  		List<IruckseoActibityDto> aclist = irservice.Actibitylist(pe_num);
  		
  		//자격/어학/수상
  		List<IruckseoSpecDto> splist = irservice.Speclist(pe_num);
  		
  		//포트폴리오
  		List<IruckseoPortfolioDto> polist = irservice.Portfoliolist(pe_num);
  		
  		//자기소개서
  		List<IruckseoSelfDto> selist = irservice.Selflist(pe_num);
  		
  		//희망근무
  		List<IruckseoHopeDto> holist = irservice.Hopelist(pe_num);
  		
  		mview.addObject("pedto", pedto);
  		mview.addObject("rdto", rdto);
  		mview.addObject("sclist", sclist);
  		mview.addObject("calist", calist);
  		mview.addObject("aclist", aclist);
  		mview.addObject("splist", splist);
  		mview.addObject("polist", polist);
  		mview.addObject("selist", selist);
  		mview.addObject("holist", holist);
  		
  		//포워드
  		mview.setViewName("/resumehome/iruckseolist");
  		
  		return mview;
  	}
  	
    //입사지원 현황 띄우기
  	@GetMapping("/resumehome/supportform")
  	public String sform(@ModelAttribute("pedto") IruckseoInsertDto pedto, Model model, HttpSession session) {
  		
  		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
  		//갯수
  		int totalCount = irservice.getPersonalCount(r_num);
  		
  		//이력서 전체리스트
  		List<IruckseoInsertDto> pelist = irservice.allPersonalDatas(r_num);

  		
  		model.addAttribute("totalCount", totalCount);
  		model.addAttribute("pelist", pelist);
  		//mview.addObject("holist", holist);
  		
  		
  		return "/resumehome/iruckseosupportform";
  	}
  	
    //스크랩공고 띄우기
  	@GetMapping("/resumehome/scrapform")
  	public String scrapform(@ModelAttribute("pedto") IruckseoInsertDto pedto, Model model, HttpSession session) {
  		
  		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
  		//갯수
  		int totalCount = irservice.getPersonalCount(r_num);
  		
  		//이력서 전체리스트
  		List<IruckseoInsertDto> pelist = irservice.allPersonalDatas(r_num);

  		
  		model.addAttribute("totalCount", totalCount);
  		model.addAttribute("pelist", pelist);
  		//mview.addObject("holist", holist);
  		
  		
  		return "/resumehome/iruckseoscrapform";
  	}
  	
  	 //관심기업 스크랩 띄우기
  	@GetMapping("/resumehome/interestform")
  	public String interestform(@ModelAttribute("pedto") IruckseoInsertDto pedto, Model model, HttpSession session) {
  		
  		int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
  		//갯수
  		int totalCount = irservice.getPersonalCount(r_num);
  		
  		//이력서 전체리스트
  		List<IruckseoInsertDto> pelist = irservice.allPersonalDatas(r_num);

  		
  		model.addAttribute("totalCount", totalCount);
  		model.addAttribute("pelist", pelist);
  		//mview.addObject("holist", holist);
  		
  		
  		return "/resumehome/iruckseointerestform";
  	}

}
