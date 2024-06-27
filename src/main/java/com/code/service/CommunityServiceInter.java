package com.code.service;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.code.dto.CommunityDto;
import com.code.dto.CompanyIntroDto;

public interface CommunityServiceInter {
    int getTotalCount();
    void insertCommunity(CommunityDto dto);
    List<CommunityDto> getAllDatas();
    CommunityDto getData(int com_num); //int로 변경
    void updateCommunity(CommunityDto dto);
    void deleteCommunity(String com_num); //home 커뮤니티 글 삭제
    void deleteInterview(String com_num); //interview 커뮤니티 글 삭제
    
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
    
    //페이징 처리
    List<CommunityDto> getAllDatasByTypePaged(String postType, int startNum, int perPage);
    List<CommunityDto> getAllDatasByCategoryPaged(String postType, String category, int startNum, int perPage);
    int getTotalCountByCategory(String postType, String category);

    //이번 주 인기 게시글 조회(5개)
    List<CommunityDto> getWeeklyPopularPosts(Date startDate, Date endDate);
    //이번 주 인기 게시글 조회(20개)
    List<CommunityDto> getWeeklyPopularPostsAll(Date startDate, Date endDate);
    
    //
    //카테고리별 조회수가 가장 많은 게시글 조회
    CommunityDto getTopPostByCategory(String postType, String category);
    //카테고리별 나머지 게시글 조회 (조회수가 가장 많은 게시글 제외, 최신 글 우선)
    List<CommunityDto> getOtherPostsByCategory(String postType, String category, int startNum, int perPage);
    //
    //조회수 가장 많은 게시글 조회
    CommunityDto getTopPostByType(String postType);
    // 조회수 가장 많은 게시글을 제외한 나머지 게시글 조회
    List<CommunityDto> getOtherPostsByType(String postType, int startNum, int perPage);
    
    //게시글을 삽입한 후 삽입된 게시글의 번호 가져오는 메소드(게시글 작성 후 homedetail 띄우기)
    int getInsertId();
    
    //////////////////////////////////////////////
    //hometotalpost 페이지 checkbox 관련 로직
    List<CommunityDto> getPostsByTypeAndSort(String type, String sortBy, int offset, int limit);
    List<CommunityDto> getPostsByCategoryAndSort(String type, String category, String sortBy, int offset, int limit);
    
    //검색기능
	public List<CommunityDto> commuAllSearch(String searchword);
}
