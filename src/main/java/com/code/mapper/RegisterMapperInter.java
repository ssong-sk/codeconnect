package com.code.mapper;

import java.util.List;
import java.util.Map;

import com.code.dto.RegisterDto;

public interface RegisterMapperInter {

	
	public void insertRegister(RegisterDto dto);
	public List<RegisterDto> getAllRegister();
	public int getSearchId(String r_id);
	public String getName(String r_id);
	public int loginIdPassCheck(Map<String, String> map);
	public RegisterDto getDataById(String r_id);
	public RegisterDto getDataByNum(String r_num);
	
}