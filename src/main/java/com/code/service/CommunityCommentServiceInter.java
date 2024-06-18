package com.code.service;

import java.util.List;

import com.code.dto.CommunityCommentDto;

public interface CommunityCommentServiceInter {
	
	void insertComment(CommunityCommentDto dto);
    List<CommunityCommentDto> getAllComment(int cc_num);
    CommunityCommentDto getComment(int cc_idx);
    void updateComment(CommunityCommentDto dto);
    void deleteComment(int cc_idx);
}
