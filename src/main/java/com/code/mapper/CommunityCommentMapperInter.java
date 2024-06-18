package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CommunityCommentDto;

@Mapper
public interface CommunityCommentMapperInter {
	
	void insertComment(CommunityCommentDto dto);
    List<CommunityCommentDto> getAllComment(int cc_num);
    CommunityCommentDto getComment(int cc_idx);
    void updateComment(CommunityCommentDto dto);
    void deleteComment(int cc_idx);
}
