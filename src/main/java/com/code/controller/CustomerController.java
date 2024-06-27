package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CustomerDto;
import com.code.service.CustomerServiceInter;

@Controller
public class CustomerController {

    @Autowired
    CustomerServiceInter service;

    @GetMapping("/customer/noticelist")
    public ModelAndView noticeList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum) {
        ModelAndView mview = new ModelAndView();

        int totalCount = service.getCountByType("notice");
        int pageSize = 10;
        int startRow = (pageNum - 1) * pageSize;
        List<CustomerDto> list = service.getPagedDatasByType("notice", startRow, pageSize);

        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);

        int totalPage = (int) Math.ceil((double) totalCount / pageSize);
        int startPage = Math.max(1, pageNum - 5);
        int endPage = Math.min(totalPage, pageNum + 4);

        mview.addObject("currentPage", pageNum);
        mview.addObject("totalPage", totalPage);
        mview.addObject("startPage", startPage);
        mview.addObject("endPage", endPage);

        mview.setViewName("customer/noticelist");

        return mview;
    }
    
    @GetMapping("/customer/noticeform")
    public String noticeForm() {
        return "customer/noticeform";
    }

    /*
    @PostMapping("/customer/noticeinsert")
    public String noticeInsert(CustomerDto dto, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (myid == null) {
            return "redirect:/login/main";
        }

        dto.setCus_user_id(myid);
        dto.setCus_top_type("notice");
        service.insertCustomer(dto);

        // 게시글 등록 후 해당 게시글의 번호 가져오기
        int cus_num = service.getLastInsertedId(); // 방금 삽입된 게시글의 번호를 가져옴
        return "redirect:/customer/noticedetail/" + cus_num;
    }
    */
    
    @PostMapping("/customer/noticeinsert")
    public String noticeInsert(CustomerDto dto, @RequestParam("upload") MultipartFile file, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (myid == null) {
            return "redirect:/login/main";
        }

        dto.setCus_user_id(myid);
        dto.setCus_top_type("notice");

        // 파일 업로드 처리
        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            String uploadDir = session.getServletContext().getRealPath("/customerimage"); // 실제 업로드할 디렉토리 설정
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs(); // 디렉토리가 존재하지 않으면 생성
            }
            try {
                File uploadedFile = new File(uploadDir + "/" + fileName);
                file.transferTo(uploadedFile);
                dto.setCus_photo(fileName); // 업로드된 파일명을 DTO에 설정
                System.out.println("Uploaded file path: " + uploadedFile.getAbsolutePath());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        // 데이터베이스에 DTO 저장
        service.insertCustomer(dto);

        // 게시글 등록 후 해당 게시글의 번호 가져오기
        int cus_num = service.getLastInsertedId(); // 방금 삽입된 게시글의 번호를 가져옴
        return "redirect:/customer/noticedetail/" + cus_num;
    }

    

    @GetMapping("/customer/noticedetail/{cus_num}")
    public ModelAndView noticeDetail(@PathVariable("cus_num") int cus_num) {
        ModelAndView mview = new ModelAndView();

        CustomerDto dto = service.getData(cus_num);
        if (dto == null) {
            mview.setViewName("redirect:/error");
            return mview;
        }

        mview.addObject("dto", dto);
        mview.setViewName("customer/noticedetail");
        return mview;
    }


    @GetMapping("/customer/eventlist")
    public ModelAndView eventList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum) {
        ModelAndView mview = new ModelAndView();

        int totalCount = service.getCountByType("event");
        int pageSize = 10;
        int startRow = (pageNum - 1) * pageSize;
        List<CustomerDto> list = service.getPagedDatasByType("event", startRow, pageSize);

        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);

        int totalPage = (int) Math.ceil((double) totalCount / pageSize);
        int startPage = Math.max(1, pageNum - 5);
        int endPage = Math.min(totalPage, pageNum + 4);

        mview.addObject("currentPage", pageNum);
        mview.addObject("totalPage", totalPage);
        mview.addObject("startPage", startPage);
        mview.addObject("endPage", endPage);

        mview.setViewName("customer/eventlist");

        return mview;
    }

    @GetMapping("/customer/inquirylist")
    public ModelAndView inquiryList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum) {
        ModelAndView mview = new ModelAndView();

        int totalCount = service.getCountByType("inquiry");
        int pageSize = 10;
        int startRow = (pageNum - 1) * pageSize;
        List<CustomerDto> list = service.getPagedDatasByType("inquiry", startRow, pageSize);

        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);

        int totalPage = (int) Math.ceil((double) totalCount / pageSize);
        int startPage = Math.max(1, pageNum - 5);
        int endPage = Math.min(totalPage, pageNum + 4);

        mview.addObject("currentPage", pageNum);
        mview.addObject("totalPage", totalPage);
        mview.addObject("startPage", startPage);
        mview.addObject("endPage", endPage);

        mview.setViewName("customer/inquirylist");

        return mview;
    }
}
