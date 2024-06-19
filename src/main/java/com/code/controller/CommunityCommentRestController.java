package com.code.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
    
    //댓글 등록
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
        dto.setCc_nickname(nickname);
        dto.setCc_num(cc_num);
        
        // insert
        service.insertComment(dto);
        comservice.incrementCommentCount(cc_num);
        
    }
    
    //댓글 목록 조회(전체 출력)
    @GetMapping("/community/alist")
    public List<CommunityCommentDto> alist(@RequestParam("cc_num") int cc_num) {
        return service.getAllComment(cc_num);
    }

    //댓글 단건 조회
    @GetMapping("/community/adata")
    public CommunityCommentDto adata(@RequestParam("cc_idx") int cc_idx) {
        return service.getComment(cc_idx);
    }

    //댓글 수정
    @PostMapping("/community/aupdate")
    public void aupdate(@ModelAttribute CommunityCommentDto dto) {
        service.updateComment(dto);
    }

    //댓글 삭제
    @GetMapping("/community/adelete")
    @ResponseBody
    public void delete(@RequestParam("cc_idx") int cc_idx, @RequestParam("cc_num") int cc_num) {
        service.deleteComment(cc_idx);
        comservice.decrementCommentCount(cc_num); //댓글 삭제 시 호출하여 댓글 수 감소시킴
    }

}
