package com.code.service;

import java.util.List;

import com.code.dto.RegisterDto;

public interface RegisterServiceInter {

	public void insertRegister(RegisterDto dto);
	public List<RegisterDto> getAllRegister();
	public int getSearchId(String r_id);
	public String getName(String r_id);
	public int loginIdPassCheck(String r_id,String r_pass);
	public RegisterDto getDataById(String r_id);
	public RegisterDto getDataByNum(String r_num);
	public boolean isIdUnique(String r_id);
	public boolean isNicknameUnique(String r_nickname);
	public String getSearchName(String r_num);
	public String getSearchHp(String r_num);
	public void deleteRegister(String r_num);
	public void updateName(RegisterDto dto);
	public void updateHp(RegisterDto dto);

}
