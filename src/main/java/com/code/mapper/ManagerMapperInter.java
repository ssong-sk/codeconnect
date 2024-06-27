package com.code.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CompanyDto;
import com.code.dto.RegisterDto;

@Mapper
public interface ManagerMapperInter {
	
	//회원 관리	
	public int countRegister();
	public List<RegisterDto> getAllRegister(HashMap<String, Integer> map);
	public RegisterDto getRegister(String r_num);
	public void updateRegister(RegisterDto dto);
	public void deleteRegister(String r_num);
	
	//기업관리
	public int countCompany();
	public List<CompanyDto> getAllCompany(HashMap<String, Integer> map);
	public CompanyDto getCompany(String c_num);
	

}
