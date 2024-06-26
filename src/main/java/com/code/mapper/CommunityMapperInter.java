package com.code.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.code.dto.CommunityDto;

@Mapper
	public interface CommunityMapperInter {
	
	public int getTotalCount(); //전체 게시글 수 조회
	public void insertCommunity(CommunityDto dto); //커뮤니티 글 삽입
    List<CommunityDto> getAllDatas(); //모든 데이터 조회
    public CommunityDto getData(int com_num); //특정 게시글 데이터 조회(int 타입으로 변경)
    public void updateCommunity(CommunityDto dto); //커뮤니티 글 업데이트
    public void deleteCommunity(String com_num); //home 커뮤니티 글 삭제
    public void deleteInterview(String com_num); //interview 커뮤니티 글 삭제
    
    //인터뷰 목록을 가져오는 메소드 추가
    List<CommunityDto> getInterviews();
    
    //post_type에 따른 전체 게시글 수 조회
    int getTotalCountByType(String type);
    
    //post_type에 따른 모든 데이터 조회
    List<CommunityDto> getAllDatasByType(String type);
    
    //카테고리별 데이터 조회 메소드 추가
    List<CommunityDto> getAllDatasByCategory(String category);
    
    //조회수 증가 메소드 추가
    void increaseReadCount(int com_num);
    
    //homedetail 좋아요 수 증가
    void updateLikeCount(int com_num);
    
    //좋아요 수 감소 메소드 추가
    void decreaseLikeCount(int com_num);
    
    //댓글수 증가, 감소 메소드 추가
    void incrementCommentCount(int com_num);
    void decrementCommentCount(int com_num);

    //페이징 처리
    List<CommunityDto> getAllDatasByTypePaged(Map<String, Object> params);
    List<CommunityDto> getAllDatasByCategoryPaged(Map<String, Object> params);
    int getTotalCountByCategory(Map<String, Object> params);
    
    //이번 주 인기 게시글 조회 (5개)
    List<CommunityDto> getWeeklyPopularPosts(Map<String, Object> params);
    //이번 주 인기 게시글 조회 (20개)
    List<CommunityDto> getWeeklyPopularPostsAll(Map<String, Object> params);
    
    //
    //카테고리별 조회수가 가장 많은 게시글 조회
    CommunityDto getTopPostByCategory(Map<String, Object> params);
    //카테고리별 나머지 게시글 조회 (조회수가 가장 많은 게시글 제외, 최신 글 우선)
    List<CommunityDto> getOtherPostsByCategory(Map<String, Object> params);
    //
    
    //조회수 가장 많은 게시글 조회
    CommunityDto getTopPostByType(Map<String, Object> params);
    //조회수 가장 많은 게시글을 제외한 나머지 게시글 조회
    List<CommunityDto> getOtherPostsByType(Map<String, Object> params);

    //게시글을 삽입한 후 삽입된 게시글의 번호 가져오는 메소드(게시글 작성 후 homedetail 띄우기)
    int getInsertId();
    
    /////////////////////////////
    //hometotalpost 페이지 checkbox 관련 로직
    List<CommunityDto> getPostsByTypeAndSort(@Param("type") String type, @Param("sortBy") String sortBy, @Param("offset") int offset, @Param("limit") int limit);
    List<CommunityDto> getPostsByCategoryAndSort(@Param("type") String type, @Param("category") String category, @Param("sortBy") String sortBy, @Param("offset") int offset, @Param("limit") int limit);

    
}
