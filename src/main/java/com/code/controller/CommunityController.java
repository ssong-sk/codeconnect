package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.code.dto.CommunityDto;
import com.code.dto.RegisterDto;
import com.code.mapper.RegisterMapperInter;
import com.code.service.CommunityServiceInter;

@Controller
public class CommunityController {

    @Autowired
    CommunityServiceInter service;
    
    @Autowired
    RegisterMapperInter mapperinter;

    @GetMapping("/community/homelist")
    public ModelAndView list() {
        ModelAndView mview = new ModelAndView();

        int totalCount = service.getTotalCountByType("home");
        List<CommunityDto> list = service.getAllDatasByType("home");

        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);

        mview.setViewName("community/homelist"); // "community/homelist.jsp"로 매핑
        return mview;
    }

    @PostMapping("/community/homeinsert")
    public String insert(@ModelAttribute CommunityDto dto,
                         @RequestParam ArrayList<MultipartFile> upload,
                         HttpSession session) {
        String path = session.getServletContext().getRealPath("/communityimage");
        String uploadName = "";

        if (upload.get(0).getOriginalFilename().equals(""))
            uploadName = "no";
        else {
            for (MultipartFile f : upload) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
                String fName = sdf.format(new Date()) + "_" + f.getOriginalFilename();
                uploadName += fName + ",";
                try {
                    f.transferTo(new File(path + "\\" + fName));
                } catch (IllegalStateException | IOException e) {
                    e.printStackTrace();
                }
            }
            uploadName = uploadName.substring(0, uploadName.length() - 1);
        }

        dto.setCom_photo(uploadName);
        dto.setCom_post_type("home"); //com_post_type을 'home'으로 설정
        
        //System.out.println("---------컨트롤러---------");
        //System.out.println(dto.toString());
        //System.out.println("---------컨트롤러---------");
        
        
        service.insertCommunity(dto);
        return "redirect:/community/homelist";
    }

    @GetMapping("/community/updateform")
    public String updateform(@RequestParam("com_num") String comNum, Model model) {
    	int comNumInt = Integer.parseInt(comNum);
        CommunityDto dto = service.getData(comNumInt);
        model.addAttribute("dto", dto);
        return "community/homeupdateform"; // "community/homeupdateform.jsp"로 매핑
    }

    @PostMapping("/community/update")
    public String update(@ModelAttribute CommunityDto dto,
                         @RequestParam ArrayList<MultipartFile> upload,
                         HttpSession session) {
        String path = session.getServletContext().getRealPath("/communityimage");
        String uploadName = "";

        if (upload.get(0).getOriginalFilename().equals(""))
            uploadName = "null";
        else {
            for (MultipartFile f : upload) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
                String fName = sdf.format(new Date()) + "_" + f.getOriginalFilename();
                uploadName += fName + ",";
                try {
                    f.transferTo(new File(path + "\\" + fName));
                } catch (IllegalStateException | IOException e) {
                    e.printStackTrace();
                }
            }
            uploadName = uploadName.substring(0, uploadName.length() - 1);
        }

        dto.setCom_photo(uploadName);
        service.updateCommunity(dto);
        return "redirect:/community/homelist";
    }

    @GetMapping("/community/delete")
    public String delete(@RequestParam String com_num) {
        service.deleteCommunity(com_num);
        return "redirect:/community/homelist";
    }

	/*
	 * @GetMapping("/community/detail") public ModelAndView detail(@RequestParam
	 * String com_num) { ModelAndView mview = new ModelAndView();
	 * 
	 * CommunityDto dto = service.getData(com_num);
	 * 
	 * mview.addObject("dto", dto);
	 * 
	 * mview.setViewName("community/homedetail"); // "community/homedetail.jsp"로 매핑
	 * return mview; }
	 */
    
    @GetMapping("/community/homedetail")
    public String detail(@RequestParam("com_num") int comNum, Model model) {
        CommunityDto dto = service.getData(comNum);
        
        // 디버깅 출력
        //System.out.println("닉네임: " + dto.getCom_nickname());
        //System.out.println("작성시간: " + dto.getCom_writetime());
        
        model.addAttribute("dto", dto);
        return "community/homedetail"; // "community/homedetail.jsp"로 매핑
    }

    @GetMapping("/community/interviewlist")
    public ModelAndView interviewList() {
        ModelAndView mview = new ModelAndView();

        int totalCount = service.getTotalCountByType("interview");
        List<CommunityDto> list = service.getAllDatasByType("interview");

        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);

        mview.setViewName("community/interviewlist"); // "community/interviewlist.jsp"로 매핑
        return mview;
    }
    
    @GetMapping("/community/homeform")
    public String form(HttpSession session, Model model) {
        if (session.getAttribute("loginok") == null) {
            return "redirect:/login"; // 로그인 안되면 로그인 페이지로 리다이렉트
        }

        String id = (String) session.getAttribute("myid");
        
        
        RegisterDto dto = mapperinter.getDataById(id);
        String nickname = dto.getR_nickname();
        String name = dto.getR_name();
        String userid = dto.getR_id();
        
        //System.out.println(nickname);
        
        model.addAttribute("userNickname", nickname);
        model.addAttribute("name", name);
        model.addAttribute("userid", userid);
        return "community/homeform"; // "community/homeform.jsp"로 매핑
    }
    
    @GetMapping("/community/homeposttotal")
    public String homePostTotal(Model model)
    {
    	List<CommunityDto> list=service.getAllDatasByType("home");
    	
    	model.addAttribute("list", list);
    	
    	return "community/homeposttotal";
    }
}
