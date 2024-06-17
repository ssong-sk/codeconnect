package com.code.controller;



import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.code.dto.HireDto;
import com.code.service.CompanyService;
import com.code.service.HireService;

@Controller
public class HireController {
   
   @Autowired
   CompanyService com_service;
   
   @Autowired
   HireService hservice;
   
   @GetMapping("/hire/main")
   public String hireMain(@ModelAttribute("hdto") HireDto dto) {
      
      return "hire/hiremain";
   }
   
   @PostMapping("/hire/insert")
   public String hireInsert(@ModelAttribute("hdto") HireDto hdto) {
      
      hservice.hireInsert(hdto);

      return "/hire/hirewrite";
   }
   
   

}
