package com.code.service;

import java.util.List;
import java.util.Map;

import com.code.dto.HireDto;

public interface HireServiceInter {
	
	public void hireInsert(HireDto dto);
	public List<HireDto> getHireList();
	public List<HireDto> searchHire(String search_job, String search_tech, String search_region, String search_career, String search_cate);
	public HireDto getHireData(int h_num);
	//스크랩
	public void scrapInsert(HireDto dto);
	public int getRnumById(String r_id);
	public void scrapDelete(int r_num, int h_num);
}
