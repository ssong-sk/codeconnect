package com.code.service;

import java.util.List;

import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoHopeDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoPortfolioDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSelfDto;
import com.code.dto.IruckseoSpecDto;

public interface IruckseoInsertServiceInter {

	//personal insert _ pe_num 등록
	public void insertPersonal(IruckseoInsertDto irdto);
	
	//이력서 update
	public void updatePersonal(IruckseoInsertDto irdto);
	
	//이력서 단건 list 출력
	public List<IruckseoInsertDto> OnePersonalDatas(IruckseoInsertDto pedto);
	
	//이력서 list 출력
	public List<IruckseoInsertDto> allPersonalDatas(IruckseoInsertDto pedto);
	
	//insert school
	public void insertSchool (IruckseoSchoolDto scdto);
	
	//학력 전체리스트 출력
	public List<IruckseoSchoolDto> allSchoolDatas(IruckseoSchoolDto scdto);
	
	//school 단건 list 출력
	public List<IruckseoSchoolDto> OneSchoolDatas(IruckseoSchoolDto scdto);
	
	//학력 school 삭제 
    public void deleteSchool(int sc_num);
    
     //학력 폼띄우기
  	public IruckseoSchoolDto selectNumSchool(int sc_num);
  	
    //학력 수정하기
  	public void updateSchool(IruckseoSchoolDto scdto);
  	
    //경력 insert
  	public void insertCareer(IruckseoCareerDto cadto);
  	
    //경력 단건 list 출력
  	public List<IruckseoCareerDto> OneCareerDatas(IruckseoCareerDto cadto);
   	
    //경력 수정폼 띄우기
  	public IruckseoCareerDto selectNumCareer(int ca_num);
  	
    //경력 수정하기
  	public void updateCareer(IruckseoCareerDto cadto);
  	
    //경력 전체출력
  	public List<IruckseoCareerDto> allCareerDatas(IruckseoCareerDto cadto);
  	
    //경력 삭제
  	public void deleteCareer(int ca_num);
  	
    //경험활동 insert
  	public void insertActibity(IruckseoActibityDto acdto);
  	
    //경험활동 단건 list 출력
  	public List<IruckseoActibityDto> OneActibityDatas(IruckseoActibityDto acdto);
  	
    //경험활동 수정폼 띄우기
  	public IruckseoActibityDto selectNumActibity(int ac_num);
  	
    //경험활동 수정하기
    public void updateActibity(IruckseoActibityDto acdto);
    
    //경험활동 수정 후 list 띄우기
  	public List<IruckseoActibityDto> allActibityDatas(IruckseoActibityDto acdto);
  	
    //경험활동 삭제
  	public void deleteActibity(int ac_num);
  	
  	//스펙 insert
  	public void insertSpec(IruckseoSpecDto spdto);
  	
    //스펙 단건 list 출력
  	public List<IruckseoSpecDto> OneSpecDatas(IruckseoSpecDto spdto);
  	
    //스펙 수정폼 띄우기
  	public IruckseoSpecDto selectNumSpec(int sp_num);
  	
    //스펙 수정하기
  	public void updateSpec(IruckseoSpecDto spdto);
  	
    //스펙 수정 후 리스트 띄우기
  	public List<IruckseoSpecDto> allSpecDatas(IruckseoSpecDto spdto);
  	
    //스펙 삭제하기
  	public void deleteSpec(int sp_num);
  	
	//포트폴리오 insert
	public void insertPortfolio(IruckseoPortfolioDto podto);
	
	//포트폴리오 insert 후 list
	public List<IruckseoPortfolioDto> OnePortfolioDatas(IruckseoPortfolioDto podto);
	
	//포트폴리오 삭제
	public void deletePortfolio(int po_num);
  	
    //자기소개서 insert
  	public void insertSelf(IruckseoSelfDto sedto);
  	
	//자기소개서 insert 후 list 출력
	public List<IruckseoSelfDto> OneSelfDatas(IruckseoSelfDto sedto);

	//자기소개서 수정폼 띄우기
	public IruckseoSelfDto selectNumSelf(int se_num);
	
	//자기소개서 수정하기
	public void updateSelf(IruckseoSelfDto sedto);
	
	//자기소개서 수정하고 list 출력
	public List<IruckseoSelfDto> allSelfDatas(IruckseoSelfDto sedto);
	
	//자기소개서 삭제하기
	public void deleteSelf(int se_num);
	
	//희망조건 insert
	public void insertHope(IruckseoHopeDto hodto);

	//희망조건 insert 후 list출력
	public List<IruckseoHopeDto> OneHopeDatas(IruckseoHopeDto hodto);
	
	//희망조건 update
	public void updateHope(IruckseoHopeDto hodto);
	
}
