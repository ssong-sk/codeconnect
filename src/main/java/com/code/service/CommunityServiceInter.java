package com.code.service;

import java.util.List;
import com.code.dto.CommunityDto;

public interface CommunityServiceInter {
    int getTotalCount();
    void insertCommunity(CommunityDto dto);
    List<CommunityDto> getAllDatas();
    CommunityDto getData(String com_num);
    void updateCommunity(CommunityDto dto);
    void deleteCommunity(String com_num);
    
    //interview 목록을 가져오는 메소드 추가
    List<CommunityDto> getInterviews();

}
