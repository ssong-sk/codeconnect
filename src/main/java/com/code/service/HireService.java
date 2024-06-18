package com.code.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.HireDto;
import com.code.mapper.HireMapperInter;

@Service
public class HireService implements HireServiceInter {
	
	@Autowired
	HireMapperInter mapper;

	@Override
	public void hireInsert(HireDto dto) {
		mapper.hireInsert(dto);
	}

	@Override
	public List<HireDto> getHireList() {
        return mapper.getHireList();
	}

}
