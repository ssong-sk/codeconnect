package com.code.service;

import java.util.HashMap;
import java.util.List;

import com.code.dto.HireDto;

public interface HireServiceInter {
	
	public void hireInsert(HireDto dto);
	List<HireDto> getHireList();
}
