package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CommunityDto;
import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.dto.RegisterDto;

@Mapper
public interface AllSearchMapperInter {

	public List<HireDto> hireAllSearch(String searchword);
	public List<CompanyIntroDto> cintroAllSearch(String searchword);
	public int counthireAllSearch(String searchword);
	public int countcintroAllSearch(String searchword);
}
