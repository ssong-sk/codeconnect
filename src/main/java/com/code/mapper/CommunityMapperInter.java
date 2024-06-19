package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.code.dto.CommunityDto;

@Mapper
	public interface CommunityMapperInter {
	
	public int getTotalCount();
	public void insertCommunity(CommunityDto dto);
    List<CommunityDto> getAllDatas();
    public CommunityDto getData(int com_num); //int 타입으로 변경
    public void updateCommunity(CommunityDto dto);
    public void deleteCommunity(String com_num);
    
    //interview 목록을 가져오는 메소드 추가
    List<CommunityDto> getInterviews();
    
    //com_post_type
    int getTotalCountByType(String type);
    List<CommunityDto> getAllDatasByType(String type);
    
    //카테고리별 데이터 조회 메소드 추가
    List<CommunityDto> getAllDatasByCategory(String category);
    
    //조회수 증가 메소드 추가
    void increaseReadCount(int com_num);
    
    //homedetail 좋아요 수 증가
    void updateLikeCount(int com_num);
    
    //좋아요 수 감소 메소드 추가
    void decreaseLikeCount(int com_num);
}
