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

	
	//채용공고에서 사용
	@Override
	public int selectC_num(String c_id) {
		return cmapperInter.selectC_num(c_id);
	}
	
	//기업 비밀번호 update
	@Override
	public void updateCompanyPass(CompanyDto dto) {
	    // 데이터베이스에 변경된 비밀번호를 반영하는 코드 작성
	    // 예: MyBatis, JPA 등을 사용하여 업데이트 쿼리를 실행합니다.
		cmapperInter.updateCompanyPass(dto);
	}

	
}



