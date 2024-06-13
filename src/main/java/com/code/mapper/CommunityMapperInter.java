package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.code.dto.CommunityDto;

@Mapper
	public interface CommunityMapperInter {
	public int getTotalCount();
	public void insertCommunity(CommunityDto dto);
    List<CommunityDto> getAllDatas();
    public CommunityDto getData(String com_num);
    public void updateCommunity(CommunityDto dto);
    public void deleteCommunity(String com_num);
    
    // interview 목록을 가져오는 메소드 추가
    List<CommunityDto> getInterviews();

    // 추가 메소드
    int getTotalCountByType(String type);
    List<CommunityDto> getAllDatasByType(String type);
}
