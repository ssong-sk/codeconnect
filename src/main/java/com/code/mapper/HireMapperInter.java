package com.code.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.HireDto;

@Mapper
public interface HireMapperInter {
	
	public void hireInsert(HireDto dto);
	List<HireDto> getHireList();
	public List<HireDto> searchHire(String search_job, String search_tech, String search_region, String search_career, String search_cate);
	public HireDto getHireData(int h_num);
	//스크랩
	public void scrapInsert(HireDto dto);
	public int getRnumById(String r_id);
	public boolean getScrap(int r_num, int h_num);
	public void scrapDelete(int r_num, int h_num);
}

