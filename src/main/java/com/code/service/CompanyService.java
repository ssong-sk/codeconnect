package com.code.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.code.dto.CompanyDto;
import com.code.mapper.CompanyMapperInter;



@Service
public class CompanyService implements CompanyServiceInter{

	@Autowired
	CompanyMapperInter cmapperInter;
	
	@Override
	public void insertCompany(CompanyDto dto) {
		// TODO Auto-generated method stub
		cmapperInter.insertCompany(dto);
	}

	@Override
	public List<CompanyDto> getAllCompanys() {
		// TODO Auto-generated method stub
		return cmapperInter.getAllCompanys();
	}

	@Override
	public int getSearchId(String c_id) {
		// TODO Auto-generated method stub
		return cmapperInter.getSearchId(c_id);
	}

	@Override
	public String getCompanyName(String c_id) {
		// TODO Auto-generated method stub
		return cmapperInter.getCompanyName(c_id);
	}

	@Override
	public int loginIdPassCheck(String c_id,String c_pass) {
		// TODO Auto-generated method stub
		
		Map<String, String> map=new HashMap<>();
		map.put("c_id", c_id);
		map.put("c_pass", c_pass);
		
		return cmapperInter.loginIdPassCheck(map);
	}

	@Override
	public CompanyDto getDataById(String c_id) {
		// TODO Auto-generated method stub
		return cmapperInter.getDataById(c_id);
	}

	@Override
	public void deleteCompany(String c_num) {
		// TODO Auto-generated method stub
		cmapperInter. deleteCompany( c_num);
	}

	@Override
	public CompanyDto getDataByNum(String c_num) {
		// TODO Auto-generated method stub
		return cmapperInter.getDataByNum(c_num);
	}



	@Override
	public void updateCompany(CompanyDto dto) {
		// TODO Auto-generated method stub
		cmapperInter.updateCompany(dto);
	}
	
}



