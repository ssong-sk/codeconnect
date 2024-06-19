package com.code.service;

import java.util.List;
import java.util.Map;

import com.code.dto.HireDto;

public interface HireServiceInter {
	
	public void hireInsert(HireDto dto);
	public List<HireDto> getHireList();
	public List<HireDto> searchHire(String search_job, String search_tech, String search_region);
}
