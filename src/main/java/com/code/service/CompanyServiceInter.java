package com.code.service;

import java.util.List;

import com.code.dto.CompanyDto;



public interface CompanyServiceInter {

	
	public void insertCompany(CompanyDto dto);
	public List<CompanyDto> getAllCompanys();
	public int getSearchId(String c_id);
	public String getCompanyName(String c_id);
	public int loginIdPassCheck(String c_id,String c_pass);
	public CompanyDto getDataById(String c_id);
	public void deleteCompany(String c_num);
	public CompanyDto getDataByNum(String c_num);

	public void updateCompany(CompanyDto dto);
	
	
	//채용공고에서 사용
	public int selectC_num(String c_id);
	
	//기업회원 비밀번호 update
	public void updateCompanyPass(CompanyDto dto);

	//기업회원 기업명 update
	public void updateCompanyName(CompanyDto dto);
	
	//기업회원 사업자등록번호 update
	public void updateCompanyRegiNum(CompanyDto dto);
}


