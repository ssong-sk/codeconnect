package com.code.service;

import java.util.List;

import com.code.dto.RegisterDto;

public interface ManagerServiceInter {
	
	public int countRegister();
	public List<RegisterDto> getAllRegister(int start, int perpage);
	public RegisterDto getRegister(String r_num);
	public void updateRegister(RegisterDto dto);
	public void deleteRegister(String r_num);

}
