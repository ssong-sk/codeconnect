package com.code.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CommunityDto;
import com.code.mapper.CommunityCommentMapperInter;
import com.code.mapper.CommunityMapperInter;
import org.springframework.context.annotation.Primary;

@Service
@Primary
public class CommunityService implements CommunityServiceInter {

    @Autowired
    CommunityMapperInter mapper;
    
    @Override
    public int getTotalCount() {
        return mapper.getTotalCount();
    }

    @Override
    public void insertCommunity(CommunityDto dto) {
        mapper.insertCommunity(dto);
    }

    @Override
    public List<CommunityDto> getAllDatas() {
        return mapper.getAllDatas();
    }

    @Override
    public CommunityDto getData(int com_num) {
        CommunityDto dto = mapper.getData(com_num);
        // 디버깅 출력
        //System.out.println("닉네임: " + dto.getCom_nickname());
        //System.out.println("작성시간: " + dto.getCom_writetime());
        return dto;
    }

    @Override
    public void updateCommunity(CommunityDto dto) {
        mapper.updateCommunity(dto);
    }

    @Override
    public void deleteCommunity(String com_num) {
        mapper.deleteCommunity(com_num);
    }

    @Override
    public List<CommunityDto> getInterviews() {
        return mapper.getInterviews();
    }

    @Override
    public int getTotalCountByType(String type) {
        return mapper.getTotalCountByType(type);
    }

    @Override
    public List<CommunityDto> getAllDatasByType(String type) {
        return mapper.getAllDatasByType(type);
    }

	@Override
	public List<CommunityDto> getAllDatasByCategory(String category) {
		// TODO Auto-generated method stub
		return mapper.getAllDatasByCategory(category);
	}

	@Override
	public void increaseReadCount(int com_num) {
		// TODO Auto-generated method stub
		mapper.increaseReadCount(com_num);
	}

	@Override
	public void updateLikeCount(int com_num) {
		// TODO Auto-generated method stub
		mapper.updateLikeCount(com_num);
	}

	@Override
	public void decreaseLikeCount(int com_num) {
		// TODO Auto-generated method stub
		mapper.decreaseLikeCount(com_num);
	}

	@Override
    public void incrementCommentCount(int com_num) {
        mapper.incrementCommentCount(com_num);
    }

    @Override
    public void decrementCommentCount(int com_num) {
        mapper.decrementCommentCount(com_num);
    }

	
}