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
}
