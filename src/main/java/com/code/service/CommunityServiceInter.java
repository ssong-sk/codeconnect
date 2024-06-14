package com.code.service;

import java.util.List;
import com.code.dto.CommunityDto;

public interface CommunityServiceInter {
    int getTotalCount();
    void insertCommunity(CommunityDto dto);
    List<CommunityDto> getAllDatas();
    CommunityDto getData(int com_num); //int로 변경
    void updateCommunity(CommunityDto dto);
    void deleteCommunity(String com_num);
    
    // 추가 메소드
    int getTotalCountByType(String type);
    List<CommunityDto> getAllDatasByType(String type);
	List<CommunityDto> getInterviews();
}
