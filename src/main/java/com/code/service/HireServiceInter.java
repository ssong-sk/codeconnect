package com.code.service;

import java.util.List;
import java.util.Map;

import com.code.dto.HireDto;
import com.code.dto.IruckseoInsertDto;

public interface HireServiceInter {
	
	public void hireInsert(HireDto dto);
	public List<HireDto> getHireList();
	public List<HireDto> searchHire(String search_job, String search_tech, String search_region, String search_career, String search_cate);
	public HireDto getHireData(int h_num);
	//스크랩
	public void scrapInsert(HireDto dto);
	public int getRnumById(String r_id);
	public void scrapDelete(int r_num, int h_num);
	public List<HireDto> getUserScraps(int r_num);
	
	//채용공고 지원하기 창
	public List<IruckseoInsertDto> selectIruckseo(int r_num);
	//채용공고 이력서 갯수
	public String countIruckseo(int r_num);
}
