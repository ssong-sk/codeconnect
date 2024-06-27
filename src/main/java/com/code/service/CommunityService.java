package com.code.service;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CommunityDto;
import com.code.dto.CompanyIntroDto;
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
        return dto;
    }

    @Override
    public void updateCommunity(CommunityDto dto) {
        mapper.updateCommunity(dto);
    }

    //home 커뮤니티 글 삭제
    @Override
    public void deleteCommunity(String com_num) {
        mapper.deleteCommunity(com_num);
    }
    
    //interview 커뮤니티 글 삭제
    @Override
    public void deleteInterview(String com_num) {
        mapper.deleteInterview(com_num);
    }

    @Override
    public List<CommunityDto> getInterviews() {
        return mapper.getInterviews();
    }

    //특정 post_type에 따른 전체 게시글 수 반환
    @Override
    public int getTotalCountByType(String type) {
        return mapper.getTotalCountByType(type);
    }

    //특정 post_type에 따른 모든 데이터 반환
    @Override
    public List<CommunityDto> getAllDatasByType(String type) {
        return mapper.getAllDatasByType(type);
    }

    @Override
    public List<CommunityDto> getAllDatasByCategory(String category) {
        return mapper.getAllDatasByCategory(category);
    }

    @Override
    public void increaseReadCount(int com_num) {
        mapper.increaseReadCount(com_num);
    }

    @Override
    public void updateLikeCount(int com_num) {
        mapper.updateLikeCount(com_num);
    }

    @Override
    public void decreaseLikeCount(int com_num) {
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

    //페이징 처리를 위한 특정 post_type의 데이터 반환
    @Override
    public List<CommunityDto> getAllDatasByTypePaged(String type, int startNum, int perPage) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", type);
        params.put("startNum", startNum);
        params.put("perPage", perPage);
        return mapper.getAllDatasByTypePaged(params);
    }

    //페이징 처리를 위한 특정 post_type과 카테고리의 데이터 반환
    @Override
    public List<CommunityDto> getAllDatasByCategoryPaged(String postType, String category, int startNum, int perPage) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", postType);
        params.put("category", category);
        params.put("startNum", startNum);
        params.put("perPage", perPage);
        return mapper.getAllDatasByCategoryPaged(params);
    }

    @Override
    public int getTotalCountByCategory(String postType, String category) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", postType);
        params.put("category", category);
        return mapper.getTotalCountByCategory(params);
    }

    //특정 기간 동안의 주간 인기 게시글(5개) 반환
    @Override
    public List<CommunityDto> getWeeklyPopularPosts(Date startDate, Date endDate) {
        Map<String, Object> params = new HashMap<>();
        params.put("startDate", startDate);
        params.put("endDate", endDate);
        return mapper.getWeeklyPopularPosts(params);
    }

    //특정 기간 동안의 주간 인기 게시글(20)개 반환
    @Override
    public List<CommunityDto> getWeeklyPopularPostsAll(Date startDate, Date endDate) {
        Map<String, Object> params = new HashMap<>();
        params.put("startDate", startDate);
        params.put("endDate", endDate);
        return mapper.getWeeklyPopularPostsAll(params);
    }

    @Override
    public CommunityDto getTopPostByCategory(String postType, String category) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", postType);
        params.put("category", category);
        return mapper.getTopPostByCategory(params);
    }

    @Override
    public List<CommunityDto> getOtherPostsByCategory(String postType, String category, int startNum, int perPage) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", postType);
        params.put("category", category);
        params.put("startNum", startNum);
        params.put("perPage", perPage);
        return mapper.getOtherPostsByCategory(params);
    }

    @Override
    public CommunityDto getTopPostByType(String postType) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", postType);
        return mapper.getTopPostByType(params);
    }

    @Override
    public List<CommunityDto> getOtherPostsByType(String postType, int startNum, int perPage) {
        Map<String, Object> params = new HashMap<>();
        params.put("postType", postType);
        params.put("startNum", startNum);
        params.put("perPage", perPage);
        return mapper.getOtherPostsByType(params);
    }

    @Override
    public int getInsertId() {
        return mapper.getInsertId();
    }

    @Override
    public List<CommunityDto> getPostsByTypeAndSort(String type, String sortBy, int offset, int limit) {
        return mapper.getPostsByTypeAndSort(type, sortBy, offset, limit);
    }

    @Override
    public List<CommunityDto> getPostsByCategoryAndSort(String type, String category, String sortBy, int offset, int limit) {
        return mapper.getPostsByCategoryAndSort(type, category, sortBy, offset, limit);
    }

	@Override
	public List<CommunityDto> commuAllSearch(String searchword) {
		return mapper.commuAllSearch(searchword);
	}
}
