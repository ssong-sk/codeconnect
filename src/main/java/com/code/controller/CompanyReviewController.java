package com.code.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.code.dto.CompanyReviewDto;
import com.code.service.CompanyReviewService;
import com.code.service.CompanyService;

@Controller
public class CompanyReviewController {

    @Autowired
    CompanyReviewService crservice;

    @Autowired
    CompanyService cservice;

    @PostMapping("/company/checkDuplicateReview")
    @ResponseBody
    public boolean checkDuplicateReview(@RequestParam String c_num, @RequestParam String myid) {
        int num = crservice.countSameCnumRid(c_num, myid);
        return num > 0;
    }

    @PostMapping("/company/companyreviewSave")
    public String companyreviewSave(@ModelAttribute CompanyReviewDto dto, HttpSession session, @RequestParam String c_num, Model model) {
        String myid = (String) session.getAttribute("myid");
        String loginok = (String) session.getAttribute("loginok");

        if (myid == null || loginok == null) {
            model.addAttribute("message", "로그인 상태가 아닙니다.");
            return "redirect:/company/showimsiCom?c_num=" + c_num; 
        }

        dto.setR_id(myid);
        dto.setC_num(c_num);

        // 디버깅 로그 추가
        System.out.println("Review Data: " + dto.toString());

        crservice.CompanyReviewInsert(dto);

        return "redirect:/company/showimsiCom?c_num=" + c_num; 
    }
}
