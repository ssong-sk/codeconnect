package com.code.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CompanyDto;



@Mapper
public interface CompanyMapperInter {

	public void insertCompany(CompanyDto dto);
	public List<CompanyDto> getAllCompanys();
	public int getSearchId(String c_id);
	public String getCompanyName(String c_id);
	public int loginIdPassCheck(Map<String,String> map);
	public CompanyDto getDataById(String c_id);
	public void deleteCompany(String c_num);
	public CompanyDto getDataByNum(String c_num);

	public void updateCompany(CompanyDto dto);
	
	//채용공고에서 사용
	public int selectC_num(String c_id);
	
	//기업 회원 비밀번호 변경
    public void updateCompanyPass(CompanyDto dto);
    
   //기업 회원 기업명 변경
    public void updateCompanyName(CompanyDto dto);
    
    //기업 사업자등록번호 변경
    public void updateCompanyRegiNum(CompanyDto dto);
    
	//스크랩(기업)
	public void scrapCompanyInsert(CompanyDto dto);
	public int getCompanyRnumById(String r_id);
	public void scrapCompanyDelete(int r_num, int c_num);
	public List<CompanyDto> getCompanyUserScraps(int r_num);
	public int getScrapCount(int r_num);
}