package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CompanyDto;
import com.code.dto.CompanyIntroDto;
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
import com.code.dto.SupportDto;
import com.code.service.CompanyIntroService;
import com.code.service.CompanyService;
import com.code.service.HireService;
import com.code.service.IruckseoInsertService;
import com.code.service.RegisterService;
import com.code.service.SupportService;

@Controller
public class IruckseoHomeController {
   
   //이력서 service
   @Autowired
   IruckseoInsertService irservice;
   
   //로그인 service (로그인 세션 가져오기)
   @Autowired
   RegisterService reservice;
   
   //공고 service
   @Autowired
   HireService hservice;
   
   //지원하기 service
   @Autowired
	SupportService sservice;
   
   //기업
   @Autowired
   CompanyService cservice;
   
   //기업
   @Autowired
   CompanyIntroService ciservice;
   
   //이력서 메인홈 띄우기
   @GetMapping("/resumehome/home")
   public ModelAndView hform(HttpSession session) {
      
      ModelAndView mview = new ModelAndView();
      
      //세션 가지고 오기
      RegisterDto rdto = new RegisterDto();
      int r_num =  Integer.parseInt((String)session.getAttribute("r_num"));
      
      // 회원정보 조회
      rdto =reservice.getDataByNum((String)session.getAttribute("r_num"));
      mview.addObject("rdto", rdto);
      
      // 이력서 등록 증명사진 조회
      IruckseoInsertDto irdto = irservice.getImage(r_num);
      mview.addObject("irdto", irdto);
      
      //이력서현황 갯수
      int totalCount = irservice.getPersonalCount(r_num);
      mview.addObject("totalCount", totalCount);
      
      //지원상태일때 갯수 
      int resultCount = irservice.getResultCount(r_num);
      mview.addObject("resultCount", resultCount);
      
      //이력서 열람일때 갯수 
      int openCount = irservice.getOpenCount(r_num);
      mview.addObject("openCount", openCount);
      
      
      
      //스크랩공고 갯수
      int scrapCount = irservice.getScrapCount(r_num);
      mview.addObject("scrapCount", scrapCount);
      
      //관심기업 갯수
      int companyCount = irservice.getCompanyCount(r_num);
      mview.addObject("companyCount", companyCount);
      
      
      
      //채용공고 정보 조회 및 추가
      List<HireDto> hlist = hservice.getHireList();
      mview.addObject("hlist", hlist);
      
      //스크랩 공고
      List<HireDto> userScraps = hservice.getUserScraps(r_num);
      mview.addObject("userScraps", userScraps);
      
      mview.setViewName("/resumehome/iruckseohome");

      return mview;
   }
   
   //이력서 현황 list 띄우기
   @GetMapping("/resumehome/conditionform")
   public ModelAndView conditionform(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
           HttpSession session) {
		
		ModelAndView mview = new ModelAndView();
		
		// r_num 가져오기
		int r_num = Integer.parseInt((String) session.getAttribute("r_num"));
		
		// 갯수 가져오기
		int totalCount = irservice.getPersonalCount(r_num);
		
		// 페이징에 필요한 변수 설정
		int perPage = 3; // 한 페이지당 보여질 글의 갯수
		int perBlock = 5; // 한 블럭당 보여질 페이지 갯수
		int start; // DB에서 가져올 글의 시작번호
		int startPage; // 각 블럭당 보여질 시작페이지
		int endPage; // 각 블럭당 보여질 끝페이지
		int totalPage; // 총 페이지 수
		int no; // 각 페이지당 출력할 시작번호
		
		// 총 페이지 수 계산
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
		
		// 각 블럭당 보여질 시작 페이지와 끝 페이지 계산
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
		if (endPage > totalPage) {
		endPage = totalPage;
		}
		
		// 각 페이지에서 보여질 시작 번호 계산
		start = (currentPage - 1) * perPage;
		
		// 각 페이지당 출력할 시작 번호
		no = totalCount - (currentPage - 1) * perPage;

		//이력서 전체리스트
		List<IruckseoInsertDto> pelist = irservice.allPersonalDatas(r_num, start, perPage);
		
		// 모델에 필요한 데이터 추가
		mview.addObject("pelist", pelist);
		mview.addObject("currentPage", currentPage);
		mview.addObject("totalCount", totalCount);
		mview.addObject("perPage", perPage);
		mview.addObject("perBlock", perBlock);
		mview.addObject("startPage", startPage);
		mview.addObject("endPage", endPage);
		mview.addObject("totalPage", totalPage);
		mview.addObject("no", no);

        // 뷰 이름 설정
        mview.setViewName("/resumehome/iruckseoconditionform");
        
        return mview;
      
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
        IruckseoHopeDto hodto = irservice.Hopelist(pe_num);
        
        mview.addObject("pedto", pedto);
        mview.addObject("rdto", rdto);
        mview.addObject("sclist", sclist);
        mview.addObject("calist", calist);
        mview.addObject("aclist", aclist);
        mview.addObject("splist", splist);
        mview.addObject("polist", polist);
        mview.addObject("selist", selist);
        mview.addObject("hodto", hodto);
        
        //포워드
        mview.setViewName("/sub/resumehome/iruckseolist");
        
        return mview;
     }
     
     //입사지원 현황 띄우기
     @GetMapping("/resumehome/supportform")
     public ModelAndView supportForm(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
                                     HttpSession session) {
         
         ModelAndView mview = new ModelAndView();
         
         // r_num 가져오기
         int r_num = Integer.parseInt((String) session.getAttribute("r_num"));
         
         // 갯수 가져오기
         int totalCount = irservice.getSupportCount(r_num);
         
         // 페이징에 필요한 변수 설정
         int perPage = 5; // 한 페이지당 보여질 글의 갯수
         int perBlock = 5; // 한 블럭당 보여질 페이지 갯수
         int start; // DB에서 가져올 글의 시작번호
         int startPage; // 각 블럭당 보여질 시작페이지
         int endPage; // 각 블럭당 보여질 끝페이지
         int totalPage; // 총 페이지 수
         int no; // 각 페이지당 출력할 시작번호
         
         // 총 페이지 수 계산
         totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
         
         // 각 블럭당 보여질 시작 페이지와 끝 페이지 계산
         startPage = (currentPage - 1) / perBlock * perBlock + 1;
         endPage = startPage + perBlock - 1;
         if (endPage > totalPage) {
             endPage = totalPage;
         }
         
         // 각 페이지에서 보여질 시작 번호 계산
         start = (currentPage - 1) * perPage;
         
         // 각 페이지당 출력할 시작 번호
         no = totalCount - (currentPage - 1) * perPage;
         
         // 페이징된 리스트 가져오기
         List<SupportDto> sulist = irservice.getSupportPaging(r_num, start, perPage);
         
         // 모델에 필요한 데이터 추가
         mview.addObject("sulist", sulist);
         mview.addObject("currentPage", currentPage);
         mview.addObject("totalCount", totalCount);
         mview.addObject("perPage", perPage);
         mview.addObject("perBlock", perBlock);
         mview.addObject("startPage", startPage);
         mview.addObject("endPage", endPage);
         mview.addObject("totalPage", totalPage);
         mview.addObject("no", no);
         
         // 뷰 이름 설정
         mview.setViewName("/resumehome/iruckseosupportform");
         
         return mview;
     }
     
     //입사지원현황 지원취소 시 업데이트
     @PostMapping("/resumehome/supportupdate")
     @ResponseBody
     public void supportupdate(@RequestParam int st_num) {
    	 
         //이력서 지원취소 누르면 지원취소하기로 업데이트
         irservice.updateSupportDelete(st_num);
     }
     
     //입사지원현황 삭제하기
     @PostMapping("/resumehome/Supportdelete")
     @ResponseBody
     public void SupportDelete(@RequestParam int st_num) {
    	 
    	 irservice.SupportDelete(st_num);
     }
     
     //스크랩공고 띄우기
     @GetMapping("/resumehome/scrapform")
     public ModelAndView scrapform(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
             HttpSession session) {

		ModelAndView mview = new ModelAndView();
		
		
		// r_num 가져오기
		int r_num = Integer.parseInt((String) session.getAttribute("r_num"));
		
		// 갯수 가져오기
		int totalCount = irservice.getScrapCount(r_num);
		
		// 페이징에 필요한 변수 설정
		int perPage = 5; // 한 페이지당 보여질 글의 갯수
		int perBlock = 5; // 한 블럭당 보여질 페이지 갯수
		int start; // DB에서 가져올 글의 시작번호
		int startPage; // 각 블럭당 보여질 시작페이지
		int endPage; // 각 블럭당 보여질 끝페이지
		int totalPage; // 총 페이지 수
		int no; // 각 페이지당 출력할 시작번호
		
		// 총 페이지 수 계산
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
		
		// 각 블럭당 보여질 시작 페이지와 끝 페이지 계산
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
		if (endPage > totalPage) {
		endPage = totalPage;
		}
		
		// 각 페이지에서 보여질 시작 번호 계산
		start = (currentPage - 1) * perPage;
		
		// 각 페이지당 출력할 시작 번호
		no = totalCount - (currentPage - 1) * perPage;
		
		// 페이징된 리스트 가져오기
		List<HireDto> shlist = irservice.getScrapHireList(r_num, start, perPage);
		List<CompanyDto> scrapList = cservice.getCompanyUserScraps(r_num);
		
		
		//데이터 가져오기
		mview.addObject("shlist", shlist);
		mview.addObject("scrapList", scrapList);
		mview.addObject("currentPage", currentPage);
        mview.addObject("totalCount", totalCount);
        mview.addObject("perPage", perPage);
        mview.addObject("perBlock", perBlock);
        mview.addObject("startPage", startPage);
        mview.addObject("endPage", endPage);
        mview.addObject("totalPage", totalPage);
        mview.addObject("no", no);
    
        // 뷰 이름 설정
        mview.setViewName("/resumehome/iruckseoscrapform");

        return mview;
     }
     
     //스크랩공고 삭제하기
     @PostMapping("/resumehome/scrapdelete")
     @ResponseBody
     public void scrapDelete(@RequestParam int s_num) {
    	 
         irservice.scrapDelete(s_num);
     }
     
      //관심기업 스크랩 띄우기
     @GetMapping("/resumehome/interestform")
	 public ModelAndView interestform(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage,
             HttpSession session) {

		ModelAndView mview = new ModelAndView();
		
		// r_num 가져오기
		int r_num = Integer.parseInt((String) session.getAttribute("r_num"));
		
		// 갯수 가져오기
		int totalCount = irservice.getCompanyCount(r_num);
		
		// 페이징에 필요한 변수 설정
		int perPage = 10; // 한 페이지당 보여질 글의 갯수
		int perBlock = 5; // 한 블럭당 보여질 페이지 갯수
		int start; // DB에서 가져올 글의 시작번호
		int startPage; // 각 블럭당 보여질 시작페이지
		int endPage; // 각 블럭당 보여질 끝페이지
		int totalPage; // 총 페이지 수
		int no; // 각 페이지당 출력할 시작번호
		
		// 총 페이지 수 계산
		totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);
		
		// 각 블럭당 보여질 시작 페이지와 끝 페이지 계산
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;
		if (endPage > totalPage) {
		endPage = totalPage;
		}
		
		// 각 페이지에서 보여질 시작 번호 계산
		start = (currentPage - 1) * perPage;
		
		// 각 페이지당 출력할 시작 번호
		no = totalCount - (currentPage - 1) * perPage;
		
		// 페이징된 리스트 가져오기
		List<CompanyDto> clist = irservice.getScrapCompanyList(r_num, start, perPage);
		
		
		//데이터 가져오기
		mview.addObject("clist", clist);
		mview.addObject("currentPage", currentPage);
        mview.addObject("totalCount", totalCount);
        mview.addObject("perPage", perPage);
        mview.addObject("perBlock", perBlock);
        mview.addObject("startPage", startPage);
        mview.addObject("endPage", endPage);
        mview.addObject("totalPage", totalPage);
        mview.addObject("no", no);
     
        // 뷰 이름 설정
        mview.setViewName("/resumehome/iruckseointerestform");

        return mview;
     }

}
