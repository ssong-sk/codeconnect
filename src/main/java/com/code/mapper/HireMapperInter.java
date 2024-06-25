package com.code.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.HireDto;
import com.code.dto.IruckseoInsertDto;

@Mapper
public interface HireMapperInter {
	
	public void hireInsert(HireDto dto);
	List<HireDto> getHireList();
	public List<HireDto> searchHire(String search_job, String search_tech, String search_region, String search_career, String search_cate);
	public HireDto getHireData(int h_num);
	//조회수
	public void hireReadCount(int h_num);
	//스크랩
	public void scrapInsert(HireDto dto);
	public int getRnumById(String r_id);
	public void scrapDelete(int r_num, int h_num);
	public List<HireDto> getUserScraps(int r_num);
	//갯수구하기
	public int getScrapCount(int r_num);
 
	
	//채용공고 지원하기 창
	public List<IruckseoInsertDto> selectIruckseo(int r_num);
	
	//채용공고 이력서 갯수
	public String countIruckseo(int r_num);
}

