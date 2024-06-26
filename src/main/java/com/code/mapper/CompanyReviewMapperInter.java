package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CompanyReviewDto;

@Mapper
public interface CompanyReviewMapperInter {
	
	// 개인회원이 기업 리뷰 "작성"
	public void CompanyReviewInsert(CompanyReviewDto dto);
	// 해당 기업의 전체 리뷰 수 조회
	public int getTotalCountCompanyReview(String c_num);

	// 기업소개 페이지에서 해당 기업 리뷰 "리스트 보기"
	public List<CompanyReviewDto> CompanyReviewList(String c_num);
	
	//개인회원이 기업 리뷰 "수정"
	public void CompanyReviewUpdate(CompanyReviewDto dto);
	
	//개인회원이 기업 리뷰 "삭제"
	public void CompanyReviewDelete(String c_num);
	
	//리뷰 중복 없도록(한 회사에 한명이 여러개의 리뷰를 적지 않게 해야함) 개수 세기
	public int countSameCnumRid(String c_num, String r_id);
	
	
	
}
