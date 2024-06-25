package com.code.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.RegisterDto;
import com.code.mapper.RegisterMapperInter;

@Service
public class RegisterService implements RegisterServiceInter {

	@Autowired
	RegisterMapperInter mapperInter;

	@Override
	public void insertRegister(RegisterDto dto) {
		mapperInter.insertRegister(dto);
	}

	@Override
	public List<RegisterDto> getAllRegister() {
		// TODO Auto-generated method stub
		return mapperInter.getAllRegister();
	}

	@Override
	public int getSearchId(String r_id) {
		// TODO Auto-generated method stub
		return mapperInter.getSearchId(r_id);
	}

	@Override
	public String getName(String r_id) {
		// TODO Auto-generated method stub
		return mapperInter.getName(r_id);
	}

	@Override
	public int loginIdPassCheck(String r_id, String r_pass) {
		// TODO Auto-generated method stub

		Map<String, String> map = new HashMap<>();
		map.put("r_id", r_id);
		map.put("r_pass", r_pass);

		return mapperInter.loginIdPassCheck(map);
	}

	@Override
	public RegisterDto getDataById(String r_id) {
		// TODO Auto-generated method stub
		return mapperInter.getDataById(r_id);
	}

	@Override
	public RegisterDto getDataByNum(String r_num) {
		// TODO Auto-generated method stub
		return mapperInter.getDataByNum(r_num);
	}

	@Override
	public boolean isIdUnique(String r_id) {
		int count = mapperInter.countById(r_id);
		return count == 0;
	}
	@Override
	public boolean isNicknameUnique(String r_nickname) {
		int count = mapperInter.countByNickname(r_nickname);
		return count == 0;
	}
	
	@Override
	public void deleteRegister(String r_num) {
		mapperInter.deleteRegister(r_num);
		
	}

	@Override
	public String getSearchName(String r_num) {
		return mapperInter.getSearchName(r_num);
	}

	@Override
	public String getSearchHp(String r_num) {
		return mapperInter.getSearchHp(r_num);
	}

	public void updateHp(RegisterDto dto) {
		mapperInter.getUpdateHp(dto);
		
	}
	
	public void updateName(RegisterDto dto) {
		mapperInter.getUpdateName(dto);
		
	}


}
