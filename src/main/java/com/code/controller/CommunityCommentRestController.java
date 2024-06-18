package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.code.dto.CommunityCommentDto;
import com.code.service.CommunityCommentService;
import com.code.service.CommunityService;

@RestController
public class CommunityCommentRestController {
    
    @Autowired
    CommunityCommentService service;
    
    @Autowired
    CommunityService comservice; 
    
    //insert
    @PostMapping("/community/ainsert")  // 매핑주소 겹치지 않게 :)
    public void insert(@ModelAttribute CommunityCommentDto dto, @RequestParam int cc_num, HttpSession session) {
        // 글쓴사람 id 아니고 로그인한 id
        String myid = (String) session.getAttribute("myid");
        String nickname = (String) session.getAttribute("userNickname");
        
        if (nickname == null) {
            nickname = "defaultNickname";
        }
        
        // dto 넣기
        dto.setCc_user_id(myid);
        dto.setCc_nickname(nickname); // cc_nickname을 세션에서 가져와 설정
        dto.setCc_num(cc_num); // cc_num을 설정
        
        // insert
        service.insertComment(dto); // content.jsp script
    }
    
    // 전체출력
    @GetMapping("/community/alist")
    public List<CommunityCommentDto> alist(@RequestParam("cc_num") int cc_num) {
        return service.getAllComment(cc_num); // cc_num 사용
    }
	    
    @GetMapping("/community/adata")
    public CommunityCommentDto adata(@RequestParam("cc_idx") int cc_idx) {
        return service.getComment(cc_idx);
    }
	    
    @PostMapping("/community/aupdate")
    public void aupdate(@ModelAttribute CommunityCommentDto dto) {
        service.updateComment(dto);
    }
	    
    @GetMapping("/community/adelete")
    public void delete(@RequestParam("cc_idx") int cc_idx) {
        service.deleteComment(cc_idx);
    }
}
