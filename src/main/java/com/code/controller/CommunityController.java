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
import org.springframework.web.bind.annotation.ResponseBody;
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
        
        List<CommunityDto> newcomerList=service.getAllDatasByCategory("신입");
        List<CommunityDto> prepareList=service.getAllDatasByCategory("취준");
        List<CommunityDto> letterList=service.getAllDatasByCategory("자소서");
        List<CommunityDto> interviewList=service.getAllDatasByCategory("면접");
        List<CommunityDto> qaList=service.getAllDatasByCategory("Q&A");

        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);
        mview.addObject("newcomerList", newcomerList);
        mview.addObject("prepareList", prepareList);
        mview.addObject("letterList", letterList);
        mview.addObject("interviewList", interviewList);
        mview.addObject("qaList", qaList);

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
        
        service.insertCommunity(dto);
        return "redirect:/community/homelist";
    }

    @GetMapping("/community/homeupdateform")
    public String updateform(@RequestParam("com_num") String comNum, Model model) {
        int comNumInt = Integer.parseInt(comNum);
        CommunityDto dto = service.getData(comNumInt);
        model.addAttribute("dto", dto);
        return "community/homeupdateform"; // "community/homeupdateform.jsp"로 매핑
    }

    @PostMapping("/community/homeupdate")
    public String update(@ModelAttribute CommunityDto dto,
                         @RequestParam ArrayList<MultipartFile> upload,
                         @RequestParam("existingPhoto") String existingPhoto,
                         HttpSession session) {
        String path = session.getServletContext().getRealPath("/communityimage");
        // 이미지를 새로 업로드하지 않을 경우 기존 이미지를 유지하는 로직 추가(existingPhoto 파라미터 받아와서 사용)
        String uploadName = existingPhoto; // 기존 이미지 파일명을 가져옴

        if (!upload.isEmpty() && !upload.get(0).getOriginalFilename().equals("")) {
            // 새로운 이미지를 업로드할 경우
            uploadName = ""; 
            for (MultipartFile f : upload) {
                String fName = f.getOriginalFilename();
                uploadName += fName + ",";
                try {
                    f.transferTo(new File(path + "\\" + fName));
                } catch (IllegalStateException | IOException e) {
                    e.printStackTrace();
                }
            }
            uploadName = uploadName.substring(0, uploadName.length() - 1); // 마지막 쉼표 제거
        }

        dto.setCom_photo(uploadName);
        dto.setCom_post_type("home"); // com_post_type을 'home'으로 설정

        service.updateCommunity(dto);
        return "redirect:/community/homedetail?com_num=" + dto.getCom_num();
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
    public String detail(@RequestParam("com_num") int comNum, HttpSession session, Model model) {
        CommunityDto dto = service.getData(comNum);
        // 조회수 증가 로직 추가
        service.increaseReadCount(comNum);

        // content 줄바꿈 로직 추가
        dto.setCom_content(dto.getCom_content().replace("\n", "<br/>"));

        // 세션에서 사용자 닉네임을 가져와 모델에 추가
        String userNickname = (String) session.getAttribute("userNickname");
        if (userNickname == null) {
            // 세션에 닉네임이 없으면 데이터베이스에서 조회하여 설정
            String userId = (String) session.getAttribute("myid");
            if (userId != null) {
                RegisterDto userDto = mapperinter.getDataById(userId);
                if (userDto != null) {
                    userNickname = userDto.getR_nickname();
                    session.setAttribute("userNickname", userNickname);
                }
            }
        }

        // userNickname이 여전히 null인 경우 기본 닉네임 설정
        if (userNickname == null) {
            userNickname = dto.getCom_nickname(); // 기본 닉네임 설정
        }

        model.addAttribute("dto", dto);
        model.addAttribute("userNickname", userNickname);

        return "community/homedetail"; // "community/homedetail.jsp"로 매핑
    }
    
    @PostMapping("/community/updateLike")
    @ResponseBody
    public void updateLike(@RequestParam("com_num") int com_num) {
        service.updateLikeCount(com_num);
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
    
    @GetMapping("/community/hometotalpost")
    public String homeTotalPost(Model model)
    {
    	List<CommunityDto> list=service.getAllDatasByType("home");
    	
    	model.addAttribute("list", list);
    	
    	return "community/hometotalpost";
    }
    
    @GetMapping("community/homefavoritelist")
    public String homeFavoriteList(Model model)
    {
    	List<CommunityDto> list=service.getAllDatasByType("home");
    	
    	model.addAttribute("list", list);
    	
		return "community/homefavoritelist";
    }
    

}
