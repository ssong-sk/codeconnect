package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.code.dto.CommunityCommentDto;
import com.code.dto.CommunityDto;

@Mapper
	public interface CommunityMapperInter {
	
	public int getTotalCount(); //전체 게시글 수 조회
	public void insertCommunity(CommunityDto dto); //커뮤니티 글 삽입
    List<CommunityDto> getAllDatas(); //모든 데이터 조회
    public CommunityDto getData(int com_num); //특정 게시글 데이터 조회(int 타입으로 변경)
    public void updateCommunity(CommunityDto dto); //커뮤니티 글 업데이트
    public void deleteCommunity(String com_num); //커뮤니티 글 삭제
    
 // 인터뷰 목록을 가져오는 메소드 추가
    List<CommunityDto> getInterviews();
    
    // 포스트 타입에 따른 전체 게시글 수 조회
    int getTotalCountByType(String type);
    
    // 포스트 타입에 따른 모든 데이터 조회
    List<CommunityDto> getAllDatasByType(String type);
    
    // 카테고리별 데이터 조회 메소드 추가
    List<CommunityDto> getAllDatasByCategory(String category);
    
    // 조회수 증가 메소드 추가
    void increaseReadCount(int com_num);
    
    // 홈디테일 좋아요 수 증가
    void updateLikeCount(int com_num);
    
    // 좋아요 수 감소 메소드 추가
    void decreaseLikeCount(int com_num);
    
    // 댓글수 증가, 감소 메소드 추가
    void incrementCommentCount(int com_num);
    void decrementCommentCount(int com_num);

}
