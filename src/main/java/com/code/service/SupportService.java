package com.code.service;

import java.util.List;

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
	
	//기업의 '전체지원자 관리'페이지에서 사용할내용: c_num을 통해 지원자 리스트 보기
	@Override
	public List<SupportDto> selectSupportByCnum(String c_num) {
		// TODO Auto-generated method stub
		return smapper.selectSupportByCnum(c_num);
	}

	
}
