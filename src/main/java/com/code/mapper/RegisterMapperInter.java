package com.code.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.code.dto.HireDto;
import com.code.dto.RegisterDto;

@Mapper
public interface RegisterMapperInter {

	public void insertRegister(RegisterDto dto);
	public int getSearchId(String r_id);
	public String getName(String r_id);
	public RegisterDto getDataById(String r_id);
	public RegisterDto getDataByNum(String r_num);
	
	public int loginIdPassCheck(Map<String, String> map);

	public int countById(String r_id);
	public int countByNickname(String r_nickname);
	
	public void deleteRegister(String r_num);
	
	public String getSearchName(String r_num);
	public String getSearchHp(String r_num);
	
	public void getUpdateHp(RegisterDto dto);
	public void getUpdateName(RegisterDto dto);
	public void getUpdateExp(RegisterDto dto);
	public void getUpdateJob(RegisterDto dto);
	public void getUpdateDescription(RegisterDto dto);
	
	public List<RegisterDto> getAllRegister();
	
	public List<RegisterDto> getScrapList();
	
	public int getScrapcountReg();
}





