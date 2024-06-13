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
		
		Map<String,String> map = new HashMap<>();
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

	/*
	 * @Override public String getNicknameByUserId(String r_id) { // TODO
	 * Auto-generated method stub return mapperInter.findNicknameByUserId(r_id);
	 * //닉네임 로직 추가 }
	 */


}
