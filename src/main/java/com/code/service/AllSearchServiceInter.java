package com.code.service;

import java.util.List;

import com.code.dto.CommunityDto;
import com.code.dto.CompanyIntroDto;
import com.code.dto.HireDto;
import com.code.dto.RegisterDto;

public interface AllSearchServiceInter {

	public List<HireDto> hireAllSearch(String searchword);
	public List<CompanyIntroDto> cintroAllSearch(String searchword);
}
