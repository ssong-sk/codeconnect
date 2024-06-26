package com.code.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.HireDto;
import com.code.dto.IruckseoInsertDto;
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

	//스크랩
	@Override
	public void scrapInsert(HireDto dto) {
		mapper.scrapInsert(dto);
	}

	@Override
	public int getRnumById(String r_id) {
		return mapper.getRnumById(r_id);
	}

	@Override
	public void scrapDelete(int r_num, int h_num) {
		Map<String, Object> params = new HashMap<>();
	    params.put("r_num", r_num);
	    params.put("h_num", h_num);
	    mapper.scrapDelete(r_num, h_num);
		
	}
	
	@Override
	public List<HireDto> getUserScraps(int r_num) {
		return mapper.getUserScraps(r_num);
	}
	
	
	//지원
	@Override
	public List<IruckseoInsertDto> selectIruckseo(int r_num) {
		return mapper.selectIruckseo(r_num);
	}

	@Override
	public String countIruckseo(int r_num) {
		return mapper.countIruckseo(r_num);
	}

	//스크랩 갯수구하기
	public int getScrapCount(int r_num) {
		// TODO Auto-generated method stub
		return mapper.getScrapCount(r_num);
	}

	//조회수
	@Override
	public void hireReadCount(int h_num) {
		mapper.hireReadCount(h_num);
	}



	

}
