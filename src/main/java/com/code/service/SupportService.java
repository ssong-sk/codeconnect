package com.code.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.SupportDto;
import com.code.mapper.SupportMapperInter;

@Service
public class SupportService implements SupportServiceInter {

	@Autowired
	SupportMapperInter smapper;
	
	@Override
	public void insertSupport(SupportDto dto) {
		smapper.insertSupport(dto);
	}

	
}
