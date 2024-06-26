package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.code.dto.CompanyDto;
import com.code.dto.SupportDto;
import com.code.service.CompanyIntroService;
import com.code.service.CompanyService;
import com.code.service.SupportService;

import jakarta.servlet.http.HttpSession;
//컨트롤러 자체 페기 예정 => 이유는 모르겠지만 Session이 작동을 안함.
@Controller
public class CompanyHireController {

    @Autowired
    CompanyService cservice;
    
    @Autowired
    CompanyIntroService ciservice;
    
    @Autowired
    SupportService stservice;

    /*
    // 잠깐 연습용 기업 마이페이지 => 채용공고 리스트 클릭
    @GetMapping("/company/companyhire")
    public String comhire(HttpSession session, Model model) {
        try {
            String c_myid = (String) session.getAttribute("c_myid");
            String c_loginok = (String) session.getAttribute("c_loginok");

            // 로그 추가
            System.out.println("Session c_myid: " + c_myid);
            System.out.println("Session c_loginok: " + c_loginok);

            // c_myid를 통해 CompanyDto를 가져오기
            CompanyDto cdto = cservice.getDataById(c_myid);

            // c_num을 가져오기
            String c_num = cdto.getC_num();

            // c_num을 통해 hire 테이블의 리스트를 가져오기
            List<SupportDto> hlist = stservice.selectSupportByCnum(c_num);

            // 모델에 hlist를 추가
            model.addAttribute("hlist", hlist);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/companyhire/companyhire_gongolist"; 
    }

    // 잠깐 연습용 기업 마이페이지 => 전체 지원자 관리 클릭
    @GetMapping("/company/jiwon")
    public String comjiwon(HttpSession session, Model model) {
        try {
            String c_myid = (String) session.getAttribute("c_myid");
            String c_loginok = (String) session.getAttribute("c_loginok");

            // 로그 추가
            System.out.println("Session c_myid: " + c_myid);
            System.out.println("Session c_loginok: " + c_loginok);

            // c_myid를 통해 CompanyDto를 가져오기
            CompanyDto dto = cservice.getDataById(c_myid);

            // 로그인한 회사(c_myid)의 회사넘버(c_num) 가져오기.
            String c_num = dto.getC_num();

            // 위에서 얻은 c_num을 넣어서 support 테이블 List로 가져오기
            List<SupportDto> slist = stservice.selectSupportByCnum(c_num);

            model.addAttribute("slist", slist);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/companyhire/companyhire_jiwon"; 
    }

    // 잠깐 연습용 기업 마이페이지 => 제안 보낸 인재풀 관리
    @GetMapping("/company/injae")
    public String cominjae() {
        return "/companyhire/companyhire_injae"; 
    }
    
    */
}
