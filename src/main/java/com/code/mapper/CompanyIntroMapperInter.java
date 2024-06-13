package com.code.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CompanyIntroDto;




@Mapper
public interface CompanyIntroMapperInter {

	public void insertCompanyIntro(CompanyIntroDto dto);
	public List<CompanyIntroDto> getAllCompanyIntros();

	public CompanyIntroDto getDataByNum(String c_num);

	public void updateCompanyIntro(CompanyIntroDto dto);
	
	public int countCompanyIntro(String c_num);

}
