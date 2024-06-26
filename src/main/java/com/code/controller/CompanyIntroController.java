package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.code.dto.CompanyDto;
import com.code.dto.CompanyIntroDto;
import com.code.dto.CompanyReviewDto;
import com.code.dto.RegisterDto;
import com.code.mapper.CompanyIntroMapperInter;
import com.code.service.CompanyIntroService;
import com.code.service.CompanyReviewService;
import com.code.service.CompanyService;
import com.code.service.RegisterService;

@Controller
public class CompanyIntroController {

    @Autowired
    CompanyIntroService ciservice;

    @Autowired
    CompanyService cservice;

    @Autowired
    CompanyIntroMapperInter cmapper;

    @Autowired
    CompanyReviewService crservice;
    
    @Autowired
    RegisterService rservice;

    // 기업 소개 메인페이지로 가기
    @GetMapping("/company/intromain")
    public String introform(Model model, HttpSession session) {
        // 로그인한 기업 아이디 받기
        String c_myid = (String) session.getAttribute("c_myid");

        // 받은 아이디를 통해서 기업 회원 정보 얻기
        CompanyDto cdto = cservice.getDataById(c_myid);

        // 얻은 기업 회원정보에서 다시 c_num 얻기
        String c_num = cdto.getC_num();

        // 얻은 c_num에서 다시 컴퍼니 소개 글 정보 얻기
        CompanyIntroDto dto = ciservice.getDataByNum(c_num);

        model.addAttribute("dto", dto);
        model.addAttribute("cdto", cdto);

        //기업소개글이 이미 있는지? 현존하는 기업 소개글의 갯수 세기
        int count = ciservice.countCompanyIntro(c_num);

        if (count == 0) {//아직 기업 소개글이 없는 경우 => 기업 소개글 insert폼으로 이동
            return "/companyintro/companyintroform";
        } else {//이미 저장된 기업 소개글이 있는 경우 => 기업 소개글 update폼으로 이동
            return "/companyintro/companyintroupdate";
        }

    }

    // insertintro(기업 소개글 인서트하기)
    @PostMapping("/company/insertintro")
    public String insertintro(@ModelAttribute CompanyIntroDto dto,
                              MultipartFile ci_image_upload,
                              MultipartFile ci_logo_upload,
                              HttpSession session) {
        String path = session.getServletContext().getRealPath("/companyintro_uploads");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        SimpleDateFormat sdf2 = new SimpleDateFormat("ssmmHHddMMyyyy");

        String fileNameImage = sdf.format(new Date()) + "_" + ci_image_upload.getOriginalFilename();
        dto.setCi_image(fileNameImage);

        String fileNameLogo = sdf2.format(new Date()) + "_" + ci_logo_upload.getOriginalFilename();
        dto.setCi_logo(fileNameLogo);

        try {
            ci_image_upload.transferTo(new File(path + "\\" + fileNameImage));
            ci_logo_upload.transferTo(new File(path + "\\" + fileNameLogo));
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }

        String c_myid = (String) session.getAttribute("c_myid");
        CompanyDto companyDto = cservice.getDataById(c_myid);
        if (companyDto != null) {
            dto.setC_num(companyDto.getC_num());
        }

        ciservice.insertCompanyIntro(dto);
        return "redirect:/company/intromain";
    }

    // updateintro(기업 소개글 업데이트하기)
    @PostMapping("/company/updateintro")
    public String updateintro(@ModelAttribute CompanyIntroDto dto,
                              @RequestParam("ci_image_upload") MultipartFile ci_image_upload,
                              @RequestParam("ci_logo_upload") MultipartFile ci_logo_upload,
                              HttpSession session) {
        String path = session.getServletContext().getRealPath("/companyintro_uploads");

        // 기존 이미지와 로고 정보를 유지하기 위해 현재 정보를 가져옴
        CompanyIntroDto currentDto = ciservice.getDataByNum(dto.getC_num());

        // 이미지 수정하면 update, 아니면 그대로 기존 이미지 유지하기.
        if (!ci_image_upload.isEmpty()) {
            // 이전 이미지 삭제하기
            if (currentDto.getCi_image() != null) {
                File oldImage = new File(path + "\\" + currentDto.getCi_image());
                if (oldImage.exists()) {
                    oldImage.delete();
                }
            }
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String fileNameImage = sdf.format(new Date()) + "_" + ci_image_upload.getOriginalFilename();
            dto.setCi_image(fileNameImage);
            try {
                ci_image_upload.transferTo(new File(path + "\\" + fileNameImage));
            } catch (IllegalStateException | IOException e) {
                e.printStackTrace();
            }
        } else {
            dto.setCi_image(currentDto.getCi_image());
        }

        // 로고 수정하면 update, 아니면 기존 로고 유지하기
        if (!ci_logo_upload.isEmpty()) {
            // 오래된 로고 폴더에서 삭제하기
            if (currentDto.getCi_logo() != null) {
                File oldLogo = new File(path + "\\" + currentDto.getCi_logo());
                if (oldLogo.exists()) {
                    oldLogo.delete();
                }
            }
            SimpleDateFormat sdf2 = new SimpleDateFormat("ssmmHHddMMyyyy");
            String fileNameLogo = sdf2.format(new Date()) + "_" + ci_logo_upload.getOriginalFilename();
            dto.setCi_logo(fileNameLogo);
            try {
                ci_logo_upload.transferTo(new File(path + "\\" + fileNameLogo));
            } catch (IllegalStateException | IOException e) {
                e.printStackTrace();
            }
        } else {
            dto.setCi_logo(currentDto.getCi_logo());
        }

        String c_myid = (String) session.getAttribute("c_myid");
        CompanyDto companyDto = cservice.getDataById(c_myid);
        if (companyDto != null) {
            dto.setC_num(companyDto.getC_num());
        }

        ciservice.updateCompanyIntro(dto);
        return "redirect:/company/intromain";
    }

    //기업 마이페이지에서 '내 기업 소개 페이지로 이동'버튼을 눌렀을때.
    //companyintro '나의' 기업 소개글 완성본 보기(임시)
    @GetMapping("/company/showimsi")
    public String detail(Model model, HttpSession session) {

        //폼의 아이디얻어줌
        String c_myid = (String)session.getAttribute("c_myid");
        //로그인중인지 아닌지
        String c_loginok = (String)session.getAttribute("c_loginok");


        CompanyDto cdto = cservice.getDataById(c_myid);
        String c_num = cdto.getC_num();

        // 회사 PK인 c_num을 넣었을 때 원하는 companyintro와 join된 company의 정보를 모두 볼 수 있게 하기
        CompanyIntroDto dto = cmapper.showOneCompanyIntro(c_num);
        model.addAttribute("dto", dto);

        model.addAttribute("cdto", cdto);
        
        
        List<CompanyReviewDto> rlist = crservice.CompanyReviewList(c_num);
        
        
        //별점
        // Calculate average ratings
        double avgHappy = 0, avgEnvironment = 0, avgCulture = 0, avgPossibility = 0, avgHeads = 0, avgAll=0;
        int totalReviews = rlist.size();
        if (totalReviews > 0) {
            for (CompanyReviewDto review : rlist) {
                avgHappy += review.getCr_happy();
                avgEnvironment += review.getCr_environment();
                avgCulture += review.getCr_culture();
                avgPossibility += review.getCr_possibility();
                avgHeads += review.getCr_heads();
               
            }
            avgHappy /= totalReviews;
            avgEnvironment /= totalReviews;
            avgCulture /= totalReviews;
            avgPossibility /= totalReviews;
            avgHeads /= totalReviews;
            avgAll = (avgHappy + avgEnvironment + avgCulture + avgPossibility + avgHeads)/5.0;
        }

        // Add average ratings to the model
        model.addAttribute("avgHappy", avgHappy);
        model.addAttribute("avgEnvironment", avgEnvironment);
        model.addAttribute("avgCulture", avgCulture);
        model.addAttribute("avgPossibility", avgPossibility);
        model.addAttribute("avgHeads", avgHeads);
        model.addAttribute("avgAll", avgAll);
        

        return "/companyintro/companyintroshow2"; // 파라미터를 모델로 전달하고 JSP로 이동

    }

    //이제 임시 아님! 매우 중요!!!
    //기업 마이페이지에서 =>기업소개리스트(임시)로 이동
    //마이페이지에서만 이어갈 수 있는 기업들 소개리스트
    @GetMapping("/company/gotoshowimsiList")
    public String showimsiList(Model model, HttpSession session) {
        List<CompanyIntroDto> clist = ciservice.getAllCompanyIntros();
        String r_num_str = (String) session.getAttribute("r_num");
        int r_num = r_num_str != null ? Integer.parseInt(r_num_str) : 0;
        model.addAttribute("r_num", r_num);

        // 사용자 스크랩 여부 확인
        if (r_num != 0) {
            List<CompanyDto> scrapList = cservice.getCompanyUserScraps(r_num);
            List<String> scrapIds = scrapList.stream()
                                              .map(CompanyDto::getC_num)
                                              .collect(Collectors.toList());
            model.addAttribute("scrapList", scrapIds);
        }
        model.addAttribute("clist", clist);

        // 로그 추가
        System.out.println("Company Intro List: " + clist);

        return "/companyintro/companyintroList";
    }

    //중요!!: 기업 리스트에서 해당 기업 소개글(detail view)로 이동하기
    //companyintro 소개글 완성본 보기
    @GetMapping("/company/showimsiCom")
    public String introshow(@RequestParam String c_num, Model model) {
        // Fetch company details by c_num
        CompanyIntroDto dto = ciservice.getDataByNum(c_num);
        CompanyDto cdto = cservice.getDataByNum(c_num);
        int review_count = crservice.getTotalCountCompanyReview(c_num);
        List<CompanyReviewDto> rlist = crservice.CompanyReviewList(c_num);

        // Add data to the model
        model.addAttribute("dto", dto);
        model.addAttribute("cdto", cdto);
        model.addAttribute("rlist", rlist);

        //별점
        // Calculate average ratings
        double avgHappy = 0, avgEnvironment = 0, avgCulture = 0, avgPossibility = 0, avgHeads = 0, avgAll=0;
        int totalReviews = rlist.size();
        if (totalReviews > 0) {
            for (CompanyReviewDto review : rlist) {
                avgHappy += review.getCr_happy();
                avgEnvironment += review.getCr_environment();
                avgCulture += review.getCr_culture();
                avgPossibility += review.getCr_possibility();
                avgHeads += review.getCr_heads();
               
            }
            avgHappy /= totalReviews;
            avgEnvironment /= totalReviews;
            avgCulture /= totalReviews;
            avgPossibility /= totalReviews;
            avgHeads /= totalReviews;
            avgAll = (avgHappy + avgEnvironment + avgCulture + avgPossibility + avgHeads)/5.0;
        }

        // Add average ratings to the model
        model.addAttribute("avgHappy", avgHappy);
        model.addAttribute("avgEnvironment", avgEnvironment);
        model.addAttribute("avgCulture", avgCulture);
        model.addAttribute("avgPossibility", avgPossibility);
        model.addAttribute("avgHeads", avgHeads);
        model.addAttribute("avgAll", avgAll);

        // Return the view name
        return "/companyintro/companyintroshow2";
    }
}
