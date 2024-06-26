package com.code.service;

import java.util.List;

import com.code.dto.CompanyIntroDto;



public interface CompanyIntroServiceInter {
	
	public void insertCompanyIntro(CompanyIntroDto dto);
	public List<CompanyIntroDto> getAllCompanyIntros();

	public CompanyIntroDto getDataByNum(String c_num);

	public void updateCompanyIntro(CompanyIntroDto dto);
	
	public int countCompanyIntro(String c_num);
	
	public CompanyIntroDto showOneCompanyIntro(String c_num);

	
	
	//채용공고에서 사용
	public int selectCi_num(int c_num);


}