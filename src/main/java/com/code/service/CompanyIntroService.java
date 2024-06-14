package com.code.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CompanyIntroDto;
import com.code.mapper.CompanyIntroMapperInter;



@Service
public class CompanyIntroService implements CompanyIntroServiceInter {
	
	@Autowired
	CompanyIntroMapperInter cmapperInter;

	@Override
	public List<CompanyIntroDto> getAllCompanyIntros() {
		// TODO Auto-generated method stub
		return cmapperInter.getAllCompanyIntros();
	}
	
	@Override
	public CompanyIntroDto getDataByNum(String c_num) {
		// TODO Auto-generated method stub
		return cmapperInter.getDataByNum(c_num);
	}
	
	@Override
	public void insertCompanyIntro(CompanyIntroDto dto) {
		// TODO Auto-generated method stub
		
		cmapperInter.insertCompanyIntro(dto);
	
		
	}
	@Override
	public void updateCompanyIntro(CompanyIntroDto dto) {
		// TODO Auto-generated method stub
		cmapperInter.updateCompanyIntro(dto);
	}
	
	@Override
	public int countCompanyIntro(String c_num) {
		// TODO Auto-generated method stub
		return cmapperInter.countCompanyIntro(c_num);
	
	}
	
	@Override
	public CompanyIntroDto showOneCompanyIntro(String c_num) {
		// TODO Auto-generated method stub
		return cmapperInter.showOneCompanyIntro(c_num);
	}
	
}
