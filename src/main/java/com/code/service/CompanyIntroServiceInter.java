package com.code.service;

import java.util.List;

import com.code.dto.CompanyIntroDto;



public interface CompanyIntroServiceInter {
	
	public void insertCompanyIntro(CompanyIntroDto dto);
	public List<CompanyIntroDto> getAllCompanyIntros();

	public CompanyIntroDto getDataByNum(String c_num);

	public void updateCompanyIntro(CompanyIntroDto dto);

}
