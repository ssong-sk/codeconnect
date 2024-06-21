package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CompanyReviewDto;
import com.code.mapper.CompanyReviewMapperInter;

@Service
public class CompanyReviewService implements CompanyReviewServiceInter {

	@Autowired
	CompanyReviewMapperInter crmapperInter;
	
	
	
	@Override
	public void CompanyReviewInsert(CompanyReviewDto dto) {
		// TODO Auto-generated method stub
		crmapperInter.CompanyReviewInsert(dto);
	}

	@Override
	public int getTotalCountCompanyReview(String c_num) {
		// TODO Auto-generated method stub
		return crmapperInter.getTotalCountCompanyReview(c_num);
	}

	@Override
	public List<CompanyReviewDto> CompanyReviewList(String c_num) {
		// TODO Auto-generated method stub
		return crmapperInter.CompanyReviewList(c_num);
	}

	@Override
	public void CompanyReviewUpdate(CompanyReviewDto dto) {
		// TODO Auto-generated method stub
		crmapperInter.CompanyReviewUpdate(dto);
	}

	@Override
	public void CompanyReviewDelete(String c_num) {
		// TODO Auto-generated method stub
		crmapperInter.CompanyReviewDelete(c_num);
	}
	
	@Override
	public int countSameCnumRid(String c_num, String r_id) {
		// TODO Auto-generated method stub
		return crmapperInter.countSameCnumRid(c_num, r_id);
	}
	

}
