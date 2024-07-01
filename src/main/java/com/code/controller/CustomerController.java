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

        mview.setViewName("/customer/noticelist");

        return mview;
    }
    
    @GetMapping("/customer/noticeform")
    public String noticeForm() {
        return "customer/noticeform";
    }

    
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
        mview.setViewName("/customer/noticedetail");
        return mview;
    }
    
    @GetMapping("/customer/noticeupdateform/{cus_num}")
    public ModelAndView noticeUpdateForm(@PathVariable("cus_num") int cus_num, HttpSession session) {
        ModelAndView mview = new ModelAndView();

        String myid = (String) session.getAttribute("myid");
        if (!"hyoyoung".equals(myid)) {
            mview.setViewName("redirect:/login/main");
            return mview;
        }

        CustomerDto dto = service.getData(cus_num);
        if (dto == null) {
            mview.setViewName("redirect:/error");
            return mview;
        }

        mview.addObject("dto", dto);
        mview.setViewName("customer/noticeupdateform");
        return mview;
    }
    
    @PostMapping("/customer/noticeupdate")
    public String noticeUpdate(CustomerDto dto, @RequestParam("upload") MultipartFile file, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (!"hyoyoung".equals(myid)) {
            return "redirect:/login/main";
        }

        // 기존 데이터에서 현재 이미지 파일명을 가져온다.
        CustomerDto existingDto = service.getData(dto.getCus_num());
        String existingPhoto = existingDto.getCus_photo();

        // 파일 업로드 처리
        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            String uploadDir = session.getServletContext().getRealPath("/customerimage");
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            try {
                File uploadedFile = new File(uploadDir + "/" + fileName);
                file.transferTo(uploadedFile);
                dto.setCus_photo(fileName); // 새로운 파일명을 설정
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            // 파일을 업로드하지 않은 경우 기존 파일명을 유지
            dto.setCus_photo(existingPhoto);
        }

        service.updateCustomer(dto);
        return "redirect:/customer/noticedetail/" + dto.getCus_num();
    }


    //게시글 삭제 메서드
    @GetMapping("/customer/noticedelete/{cus_num}")
    public String noticeDelete(@PathVariable("cus_num") String cus_num, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (!"hyoyoung".equals(myid)) {
            return "redirect:/login/main";
        }

        service.deleteCustomer(cus_num);
        return "redirect:/customer/noticelist";
    }

    /*
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

        // 카테고리별 이벤트 데이터 추가
        List<CustomerDto> ongoingEvents = service.getEventsByCategory("진행중 이벤트");
        List<CustomerDto> closedEvents = service.getEventsByCategory("마감된 이벤트");
        List<CustomerDto> announcementEvents = service.getEventsByCategory("당첨자 발표");

        // 각각의 카테고리에 대한 총 개수를 추가
        int totalCountOngoing = service.getCountByCategory("진행중 이벤트");
        int totalCountClosed = service.getCountByCategory("마감된 이벤트");
        int totalCountAnnouncement = service.getCountByCategory("당첨자 발표");

        // 모델에 총 개수를 추가
        mview.addObject("totalCountOngoing", totalCountOngoing);
        mview.addObject("totalCountClosed", totalCountClosed);
        mview.addObject("totalCountAnnouncement", totalCountAnnouncement);

        mview.addObject("ongoingEvents", ongoingEvents);
        mview.addObject("closedEvents", closedEvents);
        mview.addObject("announcementEvents", announcementEvents);

        mview.setViewName("/customer/eventlist");

        return mview;
    }
    */
    
    @GetMapping("/customer/eventlist")
    public ModelAndView eventList(@RequestParam(value = "pageNum", defaultValue = "1") int pageNum) {
        ModelAndView mview = new ModelAndView();

        // 만료된 이벤트를 마감된 이벤트로 이동
        service.moveExpiredEventsToClosed();

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

        // 카테고리별 이벤트 데이터 추가
        List<CustomerDto> ongoingEvents = service.getEventsByCategory("진행중 이벤트");
        List<CustomerDto> closedEvents = service.getEventsByCategory("마감된 이벤트");
        List<CustomerDto> announcementEvents = service.getEventsByCategory("당첨자 발표");

        // 각각의 카테고리에 대한 총 개수를 추가
        int totalCountOngoing = service.getCountByCategory("진행중 이벤트");
        int totalCountClosed = service.getCountByCategory("마감된 이벤트");
        int totalCountAnnouncement = service.getCountByCategory("당첨자 발표");

        // 모델에 총 개수를 추가
        mview.addObject("totalCountOngoing", totalCountOngoing);
        mview.addObject("totalCountClosed", totalCountClosed);
        mview.addObject("totalCountAnnouncement", totalCountAnnouncement);

        mview.addObject("ongoingEvents", ongoingEvents);
        mview.addObject("closedEvents", closedEvents);
        mview.addObject("announcementEvents", announcementEvents);

        mview.setViewName("/customer/eventlist");

        return mview;
    }




    @GetMapping("/customer/eventform")
    public String eventForm() {
        return "customer/eventform";
    }

    // 이벤트 삽입 메서드
    @PostMapping("/customer/eventinsert")
    public String eventInsert(CustomerDto dto, @RequestParam("upload") MultipartFile file, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (myid == null) {
            return "redirect:/login/main";
        }

        dto.setCus_user_id(myid);
        dto.setCus_top_type("event");

        // 파일 업로드 처리
        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            String uploadDir = session.getServletContext().getRealPath("/customerimage");
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            try {
                File uploadedFile = new File(uploadDir + "/" + fileName);
                file.transferTo(uploadedFile);
                dto.setCus_photo(fileName);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        //데이버베이스에 dto저장
        service.insertCustomer(dto);
        
        //게시글 등록 후 해당 게시글의 번호 가져오기
        int cus_num = service.getLastInsertedId();
        return "redirect:/customer/eventdetail/" + cus_num;
    }

    // 이벤트 상세 페이지를 표시하는 메서드
    @GetMapping("/customer/eventdetail/{cus_num}")
    public ModelAndView eventDetail(@PathVariable("cus_num") int cus_num) {
        ModelAndView mview = new ModelAndView();

        CustomerDto dto = service.getData(cus_num);
        if (dto == null) {
            mview.setViewName("redirect:/error");
            return mview;
        }

        mview.addObject("dto", dto);
        mview.setViewName("customer/eventdetail");
        return mview;
    }

    @GetMapping("/customer/eventupdateform/{cus_num}")
    public ModelAndView eventUpdateForm(@PathVariable("cus_num") int cus_num, HttpSession session) {
        ModelAndView mview = new ModelAndView();

        String myid = (String) session.getAttribute("myid");
        if (!"hyoyoung".equals(myid)) {
            mview.setViewName("redirect:/login/main");
            return mview;
        }

        CustomerDto dto = service.getData(cus_num);
        if (dto == null) {
            mview.setViewName("redirect:/error");
            return mview;
        }

        mview.addObject("dto", dto);
        mview.setViewName("customer/eventupdateform");
        return mview;
    }
    
    @PostMapping("/customer/eventupdate")
    public String eventUpdate(CustomerDto dto, @RequestParam("upload") MultipartFile file, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (!"hyoyoung".equals(myid)) {
            return "redirect:/login/main";
        }

        // 기존 데이터에서 현재 이미지 파일명 및 기타 필드를 가져온다.
        CustomerDto existingDto = service.getData(dto.getCus_num());
        String existingPhoto = existingDto.getCus_photo();
        String existingTopType = existingDto.getCus_top_type();
        String existingCategory = existingDto.getCus_category();

        // 파일 업로드 처리
        if (!file.isEmpty()) {
            String fileName = file.getOriginalFilename();
            String uploadDir = session.getServletContext().getRealPath("/customerimage");
            File dir = new File(uploadDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            try {
                File uploadedFile = new File(uploadDir + "/" + fileName);
                file.transferTo(uploadedFile);
                dto.setCus_photo(fileName); // 새로운 파일명을 설정
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            // 파일을 업로드하지 않은 경우 기존 파일명을 유지
            dto.setCus_photo(existingPhoto);
        }

        // 기존 top type 및 category 유지
        dto.setCus_top_type(existingTopType);
        dto.setCus_category(existingCategory);

        service.updateCustomer(dto);
        return "redirect:/customer/eventdetail/" + dto.getCus_num();
    }


    // 이벤트 삭제 메서드
    @GetMapping("/customer/eventdelete/{cus_num}")
    public String eventDelete(@PathVariable("cus_num") int cus_num, HttpSession session) {
        String myid = (String) session.getAttribute("myid");
        if (!"hyoyoung".equals(myid)) {
            return "redirect:/login/main";
        }

        service.deleteCustomer(String.valueOf(cus_num));
        return "redirect:/customer/eventlist";
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

        mview.setViewName("/customer/inquirylist");

        return mview;
    }
    
    @GetMapping("/customer/inquiryform")
    public String inquiryForm() {
        return "customer/inquiryform";
    }
}
