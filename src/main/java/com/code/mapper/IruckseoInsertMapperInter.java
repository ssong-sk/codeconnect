package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSpecDto;

@Mapper
public interface IruckseoInsertMapperInter {
	
	//personal insert _ pe_num 등록
	public void insertPersonal(IruckseoInsertDto irdto);
	
	//school insert
	public void insertSchool(IruckseoSchoolDto scdto);
	
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

	
}
