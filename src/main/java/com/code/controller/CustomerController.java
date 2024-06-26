package com.code.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
