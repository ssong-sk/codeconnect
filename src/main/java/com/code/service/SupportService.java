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

	// 기업의 '전체 지원자 관리' 페이지에서 사용할 내용: c_num을 통해 지원자 리스트 보기
	@Override
	public List<SupportDto> selectSupportByCnum(String c_num) {
		return smapper.selectSupportByCnum(c_num);
	}

	// 기업의 '전체 지원자 관리' 페이지에서 사용할 내용: st_result update
	@Override
	public void updateSupportResult(String st_num, String st_result) {
		smapper.updateSupportResult(st_num, st_result);
	}
	// 기업의 '전체 지원자 관리'페이지에서 사용할 용도의 update문 : st_open을 '열람'으로 update하기
	@Override
	public void updateSupportOpen(String st_num) {
		// TODO Auto-generated method stub
		smapper.updateSupportOpen(st_num);
	}
	
	
}
