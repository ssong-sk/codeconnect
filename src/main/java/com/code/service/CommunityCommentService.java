package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CommunityCommentDto;
import com.code.mapper.CommunityCommentMapperInter;

@Service
public class CommunityCommentService implements CommunityCommentServiceInter {

    @Autowired
    CommunityCommentMapperInter mapper;
    
    @Override
    public void insertComment(CommunityCommentDto dto) {
        mapper.insertComment(dto);
    }

    @Override
    public List<CommunityCommentDto> getAllComment(int cc_num) {
        return mapper.getAllComment(cc_num);
    }

    @Override
    public CommunityCommentDto getComment(int cc_idx) {
        return mapper.getComment(cc_idx);
    }

    @Override
    public void updateComment(CommunityCommentDto dto) {
        mapper.updateComment(dto);
    }

    @Override
    public void deleteComment(int cc_idx) {
        mapper.deleteComment(cc_idx);
    }
}
