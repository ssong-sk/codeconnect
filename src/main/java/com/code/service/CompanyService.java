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

		cmapperInter.updateCompanyPass(dto);
	}

	//기업명 update
	@Override
	public void updateCompanyName(CompanyDto dto) {
		// TODO Auto-generated method stub
		cmapperInter.updateCompanyName(dto);
	}

	//사업자등록번호 update	
	@Override
	public void updateCompanyRegiNum(CompanyDto dto) {
		// TODO Auto-generated method stub
		cmapperInter.updateCompanyRegiNum(dto);
	}

	//스크랩
	@Override
	public void scrapCompanyInsert(CompanyDto dto) {
		cmapperInter.scrapCompanyInsert(dto);
	}

	@Override
	public int getCompanyRnumById(String r_id) {
		// TODO Auto-generated method stub
		return cmapperInter.getCompanyRnumById(r_id);
	}

	@Override
	public void scrapCompanyDelete(int r_num, int c_num) {
		Map<String, Object> params = new HashMap<>();
		params.put("r_num", r_num);
		params.put("c_num", c_num);
		cmapperInter.scrapCompanyDelete(r_num, c_num);

	}

	@Override
	public List<CompanyDto> getCompanyUserScraps(int r_num) {
		return cmapperInter.getCompanyUserScraps(r_num);
	}

	@Override
	public int getScrapCount(int r_num) {
		// TODO Auto-generated method stub
		return cmapperInter.getScrapCount(r_num);
	}
}
