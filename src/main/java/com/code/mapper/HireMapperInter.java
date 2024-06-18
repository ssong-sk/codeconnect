package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.HireDto;

@Mapper
public interface HireMapperInter {
	
	public void hireInsert(HireDto dto);
	List<HireDto> getHireList();
	public int selectH_c_num();
}
