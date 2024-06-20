package com.code.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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

        // 이번 주 월요일과 일요일 날짜를 계산
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        Date startDate = new Date(cal.getTimeInMillis());
        cal.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        cal.add(Calendar.WEEK_OF_YEAR, 1);
        Date endDate = new Date(cal.getTimeInMillis());
        
        //이번 주 인기 게시글 조회 (homelist에서는 5개만 보이게)
        List<CommunityDto> popularPosts = service.getWeeklyPopularPosts(startDate, endDate);
        
        mview.addObject("totalCount", totalCount);
        mview.addObject("list", list);
        mview.addObject("newcomerList", newcomerList);
        mview.addObject("prepareList", prepareList);
        mview.addObject("letterList", letterList);
        mview.addObject("interviewList", interviewList);
        mview.addObject("qaList", qaList);
        mview.addObject("popularPosts", popularPosts); //최근 한 주 인기 게시글 추가

        mview.setViewName("community/homelist"); // "community/homelist.jsp"로 매핑
        return mview;
    }

    /*
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
                String fName = sdf.format(new java.util.Date()) + "_" + f.getOriginalFilename();
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
    */
    
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
                String fName = sdf.format(new java.util.Date()) + "_" + f.getOriginalFilename();
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
        int insertedComNum = service.getInsertId();

        return "redirect:/community/homedetail?com_num=" + insertedComNum;
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
        //조회수 증가 로직 추가
        service.increaseReadCount(comNum);

        //content 줄바꿈 로직 추가
        dto.setCom_content(dto.getCom_content().replace("\n", "<br/>"));

        //세션에서 사용자 닉네임을 가져와 모델에 추가
        String userNickname = (String) session.getAttribute("userNickname");
        if (userNickname == null) {
            //세션에 닉네임이 없으면 데이터베이스에서 조회하여 설정
            String userId = (String) session.getAttribute("myid");
            if (userId != null) {
                RegisterDto userDto = mapperinter.getDataById(userId);
                if (userDto != null) {
                    userNickname = userDto.getR_nickname();
                    session.setAttribute("userNickname", userNickname);
                }
            }
        }

        //userNickname이 여전히 null인 경우 기본 닉네임 설정
        if (userNickname == null) {
            userNickname = dto.getCom_nickname(); // 기본 닉네임 설정
        }

        model.addAttribute("dto", dto);
        model.addAttribute("userNickname", userNickname);

        return "community/homedetail"; // "community/homedetail.jsp"로 매핑
    }
    
    
    //homedetail 페이지 좋아요 버튼
    @PostMapping("/community/updateLike")
    @ResponseBody
    public void updateLike(@RequestParam("com_num") int com_num, HttpSession session) {
        service.updateLikeCount(com_num);
        // 사용자가 좋아요를 누른 게시글 목록을 세션에 저장
        List<Integer> likedPosts = (List<Integer>) session.getAttribute("likedPosts");
        if (likedPosts == null) {
            likedPosts = new ArrayList<>();
        }
        likedPosts.add(com_num);
        session.setAttribute("likedPosts", likedPosts);
    }

    @PostMapping("/community/removeLike")
    @ResponseBody
    public void removeLike(@RequestParam("com_num") int com_num, HttpSession session) {
        service.decreaseLikeCount(com_num);
        // 사용자가 좋아요를 취소한 게시글 목록을 세션에서 제거
        List<Integer> likedPosts = (List<Integer>) session.getAttribute("likedPosts");
        if (likedPosts != null) {
            likedPosts.remove(Integer.valueOf(com_num));
            session.setAttribute("likedPosts", likedPosts);
        }
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
    
    /*
    @GetMapping("/community/hometotalpost")
    public String homeTotalPost(
        Model model,
        @RequestParam(value = "category", required = false) String category,
        @RequestParam(value = "pageNum", defaultValue = "1") int currentPage) {

        if (category != null) {
            category = URLDecoder.decode(category, StandardCharsets.UTF_8);
        }

        int perPage = 7; // 한 페이지당 게시글 수
        int perBlock = 10; // 한 블록당 보여줄 페이지 수
        int totalCount;
        List<CommunityDto> list;

        if (category == null || category.isEmpty() || category.equals("전체글")) {
            totalCount = service.getTotalCountByType("home");
            list = service.getAllDatasByTypePaged("home", (currentPage - 1) * perPage, perPage);
            category = "전체글";
        } else {
            totalCount = service.getTotalCountByCategory("home", category);
            list = service.getAllDatasByCategoryPaged("home", category, (currentPage - 1) * perPage, perPage);
        }

        int totalPage = (int) Math.ceil((double) totalCount / perPage);
        int startPage = (currentPage - 1) / perBlock * perBlock + 1;
        int endPage = startPage + perBlock - 1;
        if (endPage > totalPage) {
            endPage = totalPage;
        }

        model.addAttribute("list", list);
        model.addAttribute("category", category);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "community/hometotalpost";
    }
    */
    
    /*
    @GetMapping("/community/hometotalpost")
    public String homeTotalPost(
        Model model,
        @RequestParam(value = "category", required = false) String category,
        @RequestParam(value = "pageNum", defaultValue = "1") int currentPage) {

        if (category != null) {
            category = URLDecoder.decode(category, StandardCharsets.UTF_8);
        }

        int perPage = 7; // 한 페이지당 게시글 수
        int perBlock = 10; // 한 블록당 보여줄 페이지 수
        int totalCount;
        CommunityDto topPost = null;
        List<CommunityDto> otherPosts;

        if (category == null || category.isEmpty() || category.equals("전체글")) {
            totalCount = service.getTotalCountByType("home");
            otherPosts = service.getAllDatasByTypePaged("home", (currentPage - 1) * perPage, perPage);
            category = "전체글";
        } else {
            totalCount = service.getTotalCountByCategory("home", category);
            topPost = service.getTopPostByCategory("home", category);
            otherPosts = service.getOtherPostsByCategory("home", category, (currentPage - 1) * perPage, perPage);
        }

        int totalPage = (int) Math.ceil((double) totalCount / perPage);
        int startPage = (currentPage - 1) / perBlock * perBlock + 1;
        int endPage = startPage + perBlock - 1;
        if (endPage > totalPage) {
            endPage = totalPage;
        }

        model.addAttribute("topPost", topPost);
        model.addAttribute("otherPosts", otherPosts);
        model.addAttribute("category", category);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "community/hometotalpost";
    }
    */
    
    /*
    @GetMapping("/community/hometotalpost")
    public String homeTotalPost(
        Model model,
        @RequestParam(value = "category", required = false) String category,
        @RequestParam(value = "pageNum", defaultValue = "1") int currentPage) {

        if (category != null) {
            category = URLDecoder.decode(category, StandardCharsets.UTF_8);
        }

        int perPage = 7; // 한 페이지당 게시글 수
        int perBlock = 10; // 한 블록당 보여줄 페이지 수
        int totalCount;
        CommunityDto topPost = null;
        List<CommunityDto> otherPosts;

        if (category == null || category.isEmpty() || category.equals("전체글")) {
            category = "전체글";
            totalCount = service.getTotalCountByType("home");
            topPost = service.getTopPostByType("home");
            otherPosts = service.getOtherPostsByType("home", (currentPage - 1) * perPage, perPage);
        } else {
            totalCount = service.getTotalCountByCategory("home", category);
            topPost = service.getTopPostByCategory("home", category);
            otherPosts = service.getOtherPostsByCategory("home", category, (currentPage - 1) * perPage, perPage);
        }

        int totalPage = (int) Math.ceil((double) totalCount / perPage);
        int startPage = (currentPage - 1) / perBlock * perBlock + 1;
        int endPage = startPage + perBlock - 1;
        if (endPage > totalPage) {
            endPage = totalPage;
        }

        model.addAttribute("topPost", topPost);
        model.addAttribute("otherPosts", otherPosts);
        model.addAttribute("category", category);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "community/hometotalpost";
    }
	*/
    
    
    @GetMapping("/community/hometotalpost")
    public String homeTotalPost(
        Model model,
        @RequestParam(value = "category", required = false) String category,
        @RequestParam(value = "sortBy", required = false, defaultValue = "new") String sortBy,
        @RequestParam(value = "pageNum", defaultValue = "1") int currentPage) {

        if (category != null) {
            category = URLDecoder.decode(category, StandardCharsets.UTF_8);
        }

        int perPage = 7; // 한 페이지당 게시글 수
        int perBlock = 10; // 한 블록당 보여줄 페이지 수
        int totalCount;
        final CommunityDto topPost; // topPost를 final로 선언
        List<CommunityDto> otherPosts;

        if (category == null || category.isEmpty() || category.equals("전체글")) {
            category = "전체글";
            totalCount = service.getTotalCountByType("home");
            topPost = service.getTopPostByType("home");
            otherPosts = service.getPostsByTypeAndSort("home", sortBy, (currentPage - 1) * perPage, perPage);
        } else {
            totalCount = service.getTotalCountByCategory("home", category);
            topPost = service.getTopPostByCategory("home", category);
            otherPosts = service.getPostsByCategoryAndSort("home", category, sortBy, (currentPage - 1) * perPage, perPage);
        }

        // checkbox 카테고리 선택시 최상단 인기글 제외하고 아래 리스트 출력하기
        if (topPost != null) {
            otherPosts.removeIf(post -> post.getCom_num() == topPost.getCom_num());
        }

        int totalPage = (int) Math.ceil((double) totalCount / perPage);
        int startPage = (currentPage - 1) / perBlock * perBlock + 1;
        int endPage = startPage + perBlock - 1;
        if (endPage > totalPage) {
            endPage = totalPage;
        }

        model.addAttribute("topPost", topPost);
        model.addAttribute("otherPosts", otherPosts);
        model.addAttribute("category", category);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "community/hometotalpost";
    }
    
    



    @GetMapping("/community/homepopularlist")
    public String homepopularlist(Model model) {
        // 이번 주 월요일과 일요일 날짜를 계산
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        Date startDate = new Date(cal.getTimeInMillis());
        cal.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        cal.add(Calendar.WEEK_OF_YEAR, 1);
        Date endDate = new Date(cal.getTimeInMillis());

        // 이번 주 인기 게시글 조회 (homepopularlist에서는 list 20개 출력)
        List<CommunityDto> popularPosts = service.getWeeklyPopularPostsAll(startDate, endDate);

        model.addAttribute("popularPosts", popularPosts);

        return "community/homepopularlist";
    }

}
