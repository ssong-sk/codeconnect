package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.mapper.AllSearchMapperInter;

@Service
public class AllSearchService implements AllSearchServiceInter {

	@Autowired
	AllSearchMapperInter amapper;
	
	@Override
	public List<HireDto> hireAllSearch(String searchword) {
		return amapper.hireAllSearch(searchword);
	}

	@Override
	public List<CompanyIntroDto> cintroAllSearch(String searchword) {
		return amapper.cintroAllSearch(searchword);
	}

	@Override
	public int counthireAllSearch(String searchword) {
		return amapper.counthireAllSearch(searchword);
	}

	@Override
	public int countcintroAllSearch(String searchword) {
		return amapper.countcintroAllSearch(searchword);
	}

	@Override
	public List<CompanyIntroDto> cintroList() {
		return amapper.cintroList();
	}

}
