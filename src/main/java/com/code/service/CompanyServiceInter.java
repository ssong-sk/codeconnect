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
}


