package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.HireDto;
import com.code.dto.IruckseoInsertDto;
import com.code.service.CompanyService;
import com.code.service.HireService;
import com.code.service.IruckseoInsertService;

@Controller
public class HireController {

   @Autowired
   CompanyService com_service;

   @Autowired
   HireService hservice;
   
   @Autowired
   IruckseoInsertService ir_service;
   
   @PostMapping("/hire/insert")
   public String hireInsert(@ModelAttribute("hdto") HireDto hdto) {

      hservice.hireInsert(hdto);

      return "/hire/hiremain";
   }

   @GetMapping("/hire/main")
   public String hireMain(@ModelAttribute("hdto") HireDto dto, Model model, HttpSession session) {
      List<HireDto> hlist = hservice.getHireList();

      for (HireDto h : hlist) {
         String careerValue = h.getH_career();

         if (!"신입".equals(careerValue)) {
            String formattedCareer = formatCareer(careerValue);
            h.setH_career(formattedCareer);
         }
      }
      
      String myid=(String)session.getAttribute("myid");
      Integer r_num = null;
      
      if (myid != null) {
          r_num = hservice.getRnumById(myid);
      }

      if (r_num == null) {
          r_num = 0; // 기본값 설정
      }
      
      // 스크랩 여부 확인
      for (HireDto h : hlist) {
          boolean scraped = hservice.getScrap(r_num, h.getH_num());
          h.setScraped(scraped);
      }

      model.addAttribute("hlist", hlist);
      model.addAttribute("r_num", r_num);
      return "hire/hiremain";
   }

   private String formatCareer(String careerValue) {
      String[] parts = careerValue.split("\\|");
      int[] careerArray = new int[parts.length];
      for (int i = 0; i < parts.length; i++) {
         careerArray[i] = Integer.parseInt(parts[i]);
      }
      java.util.Arrays.sort(careerArray);

      StringBuilder result = new StringBuilder();
      int rangeStart = careerArray[0];
      for (int i = 1; i < careerArray.length; i++) {
         if (i < careerArray.length && careerArray[i] == careerArray[i - 1] + 1) {
            continue;
         } else {
            if (rangeStart == careerArray[i - 1]) {
               result.append(rangeStart);
            } else {
               result.append(rangeStart).append("~").append(careerArray[i - 1]);
            }
            if (i < careerArray.length) {
               result.append(", ");
            }
            rangeStart = careerArray[i];
         }
      }
      if (careerArray.length > 0) {
         if (rangeStart == careerArray[careerArray.length - 1]) {
            result.append(rangeStart);
         } else {
            result.append(rangeStart).append("~").append(careerArray[careerArray.length - 1]);
         }
      }
      return result.toString();
   }

   @ResponseBody
   @GetMapping("/hire/search")
   public List<HireDto> hireSearch(String search_job, String search_tech, String search_region, String search_career, String search_cate) {
      
      List<HireDto> slist=hservice.searchHire(search_job, search_tech, search_region, search_career, search_cate);
      
      for (HireDto h : slist) {
         String careerValue = h.getH_career();

         if (!"신입".equals(careerValue)) {
            String formattedCareer = formatCareer(careerValue);
            h.setH_career(formattedCareer);
         }
      }
      
      return slist;
   }
   
   @GetMapping("/hire/detail")
   public ModelAndView detail(int h_num, HttpSession session) {
      
	  int r_num = (int) session.getAttribute("r_num");
	  
      ModelAndView mview = new ModelAndView();
      
      HireDto hdto = hservice.getHireData(h_num);
      
      List<IruckseoInsertDto> irlist = hservice.selectIruckseo(r_num);
      
      String ir_count = hservice.countIruckseo(r_num);
      
      String careerValue = hdto.getH_career();
      if (!"신입".equals(careerValue)) {
         String formattedCareer = formatCareer(careerValue);
         hdto.setH_career(formattedCareer);
      }
      
      String r_hp=(String)session.getAttribute("r_hp");
      String r_email=(String)session.getAttribute("r_email");
      
      
      mview.addObject("hdto", hdto);
      mview.addObject("irlist", irlist);
      mview.addObject("ir_count", ir_count);
      mview.addObject("r_hp", r_hp);
      mview.addObject("r_email", r_email);
      mview.setViewName("/hire/hiredetail");
      
      return mview;
   }
   
   //스크랩
   @ResponseBody
   @PostMapping("/hire/scrap")
   public String scrapinsert(@ModelAttribute("hdto") HireDto hdto) {

      hservice.scrapInsert(hdto);

      return "success";
   }
   
   @ResponseBody
   @PostMapping("/hire/scrapdelete")
   public String scrapdelete(@RequestParam int r_num, @RequestParam int h_num) {

      hservice.scrapDelete(r_num, h_num);

      return "success";
   }
   

}
