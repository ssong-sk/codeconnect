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
    
    //post_type interview 로직
    int getTotalCountByType(String type);
    List<CommunityDto> getAllDatasByType(String type);
	List<CommunityDto> getInterviews();
	
	//카테고리별 데이터 조회 메소드 추가
	List<CommunityDto> getAllDatasByCategory(String category);
	
	//조회수 증가 메소드 추가(homedetail-homelist)
	void increaseReadCount(int com_num);
	
	//homedetail 좋아요 수 증가(처음 클릭 시)
    void updateLikeCount(int com_num);
    //homedetail 좋아요 수 감소(다시 클릭 시)
    void decreaseLikeCount(int com_num);
    
    //댓글수 증가, 감소 메소드 추가
    void incrementCommentCount(int com_num);
    void decrementCommentCount(int com_num);

}
