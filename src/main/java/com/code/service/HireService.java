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

	@Override
	public List<HireDto> searchHire(String search_job, String search_tech, String search_region, String search_career, String search_cate) {
		return mapper.searchHire(search_job, search_tech, search_region, search_career, search_cate);
	}

	@Override
	public HireDto getHireData(int h_num) {
		return mapper.getHireData(h_num);
	}

}
