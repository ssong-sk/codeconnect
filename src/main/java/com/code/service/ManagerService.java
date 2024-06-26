package com.code.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.RegisterDto;
import com.code.mapper.ManagerMapperInter;

@Service
public class ManagerService implements ManagerServiceInter {
	
	@Autowired
	ManagerMapperInter mapper;

	@Override
	public int countRegister() {
		return mapper.countRegister();
	}

	@Override
	public List<RegisterDto> getAllRegister(int start, int perpage) {
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return mapper.getAllRegister(map);
	}

	@Override
	public RegisterDto getRegister(String r_num) {
		return mapper.getRegister(r_num);
	}

	@Override
	public void updateRegister(RegisterDto dto) {
		mapper.updateRegister(dto);
	}

	@Override
	public void deleteRegister(String r_num) {
		mapper.deleteRegister(r_num);
	}

}
