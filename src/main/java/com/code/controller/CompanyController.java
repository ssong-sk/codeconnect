package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CompanyDto;
import com.code.service.CompanyService;


@Controller
public class CompanyController {

    @Autowired
    CompanyService cservice;

    //기업 로그인로그아웃관련 임시 통합페이지
    @GetMapping("/company")
    public String imsicom() {
    	return "/company/companyimsiall"; //앞에 '/'넣은게 최신입니다.
    }

    //아직없어!
    @GetMapping("/company/list")
    public ModelAndView list() {
        ModelAndView mview = new ModelAndView();

        List<CompanyDto> c_list = cservice.getAllCompanys();

        mview.addObject("c_list", c_list);
        mview.addObject("c_mcount", c_list.size());

        mview.setViewName("/company/companylist");
        return mview;
    }

    @GetMapping("/company/form")
    public String form() {
        return "/company/companygaip";
    }

    // id체크
    // Map으로 하는 이유 :ajax => key value로 저장할때
    @GetMapping("/company/idcheck")
    @ResponseBody
    public Map<String, Integer> idcheckprocess(@RequestParam String c_id) {
        Map<String, Integer> map = new HashMap<>();

        // 로그 추가
        System.out.println("Received ID for check: " + c_id);

        // id 체크 메서드 호출
        int n = cservice.getSearchId(c_id);

        // 로그 추가
        System.out.println("ID check result for " + c_id + ": " + n);

        map.put("count", n); // 1 or 0
        return map;
    }

    // insert(기업 회원 가입 작동)
    @PostMapping("/company/gaip")
    public String insert(@ModelAttribute CompanyDto dto, HttpSession session) {
        String c_myid = (String) session.getAttribute("c_myid");
        String c_loginok = (String) session.getAttribute("c_loginok");

        cservice.insertCompany(dto);

        return "/company/gaipsuccess";
    }

    // 회원정보로 가기
    @GetMapping("/company/myinfo")
    public String myinfo(Model model, HttpSession session) {
        String c_myid = (String) session.getAttribute("c_myid");
        CompanyDto dto = cservice.getDataById(c_myid); // myid로 CompanyDto를 가져오는 서비스 메서드

        // List<CompanyDto> c_list=cservice.getAllCompanys();
        // model.addAttribute("c_list", c_list);

        model.addAttribute("dto", dto);
        return "/company/companymypage";
    }

    // 회원리스트확인

    // 회원목록 삭제
    @GetMapping("/company/delete")
    @ResponseBody
    public void deleteMember(String c_num) {
        cservice.deleteCompany(c_num);
    }

    // 수정페이지로 가기
    @GetMapping("/company/companyupdate")
    public String companyupdate(Model model, HttpSession session) {
        String c_myid = (String) session.getAttribute("c_myid");
        CompanyDto dto = cservice.getDataById(c_myid); // myid로 CompanyDto를 가져오는 서비스 메서드

        String c_num = dto.getC_num();
        model.addAttribute("dto", dto);
        return "/company/companyupdate";
    }

    // 수정
    @PostMapping("/company/update")
    public String update(@ModelAttribute CompanyDto dto) {
        cservice.updateCompany(dto);
        return "redirect:/company/myinfo"; // redirect to the myinfo mapping
    }

    // 탈퇴
    @GetMapping("/company/deleteme")
    @ResponseBody
    public void deleteme(String c_num, HttpSession session) {
        cservice.deleteCompany(c_num);

        session.removeAttribute("c_loginok");
        session.removeAttribute("c_myid");
    }

}