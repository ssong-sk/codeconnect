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
	
	/*
	 * public String getNicknameByUserId(String r_id); //닉네임 가져오는 메서드 추가
	 */
}
