package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.IruckseoActibityDto;
import com.code.dto.IruckseoCareerDto;
import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.dto.IruckseoSpecDto;
import com.code.mapper.IruckseoInsertMapperInter;

@Service
public class IruckseoInsertService implements IruckseoInsertServiceInter {
	
	//school mapperinter
	@Autowired
	IruckseoInsertMapperInter irmapper;

	//personal insert 
	public void insertPersonal(IruckseoInsertDto irdto) {
		// TODO Auto-generated method stub
		irmapper.insertPersonal(irdto);
	}
	
	//school insert
	@Override
	public void insertSchool(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		irmapper.insertSchool(scdto);
	}

	//학력 전체리스트 출력
	public List<IruckseoSchoolDto> allSchoolDatas(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		return irmapper.allSchoolDatas(scdto);
	}
	
	//school 단건list 출력하기
	@Override
	public List<IruckseoSchoolDto> OneSchoolDatas(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		return irmapper.OneSchoolDatas(scdto);
	}

	//학력 school 삭제하기
	@Override
	public void deleteSchool(int sc_num) {
		// TODO Auto-generated method stub
		irmapper.deleteSchool(sc_num);
	}

	//학력 수정폼
	@Override
	public IruckseoSchoolDto selectNumSchool(int sc_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumSchool(sc_num);
	}

	//학력 수정하기
	@Override
	public void updateSchool(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		irmapper.updateSchool(scdto);
	}

	//경력 insert
	public void insertCareer(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		irmapper.insertCareer(cadto);
	}

	//경력 단건 list 출력
	public List<IruckseoCareerDto> OneCareerDatas(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		return irmapper.OneCareerDatas(cadto);
	}

	//경력 수정폼 띄우기
	public IruckseoCareerDto selectNumCareer(int ca_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumCareer(ca_num);
	}

	//경력 수정하기
	public void updateCareer(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		irmapper.updateCareer(cadto);
	}

	//경력 list 전체 출력
	public List<IruckseoCareerDto> allCareerDatas(IruckseoCareerDto cadto) {
		// TODO Auto-generated method stub
		return irmapper.allCareerDatas(cadto);
	}

	//경력 삭제하기
	public void deleteCareer(int ca_num) {
		// TODO Auto-generated method stub
		irmapper.deleteCareer(ca_num);
	}

	//경험활동 insert
	public void insertActibity(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		irmapper.insertActibity(acdto);
	}

	//경험활동 단건 list 출력
	public List<IruckseoActibityDto> OneActibityDatas(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		return irmapper.OneActibityDatas(acdto);
	}
	
	//경험활동 수정폼 띄우기
	public IruckseoActibityDto selectNumActibity(int ac_num) {
		// TODO Auto-generated method stub
		return irmapper.selectNumActibity(ac_num);
	}
	
	//경험활동 수정하기
	public void updateActibity(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		irmapper.updateActibity(acdto);
	}
	
	//경험활동 수정 후 전체리스트 띄우기
	public List<IruckseoActibityDto> allActibityDatas(IruckseoActibityDto acdto) {
		// TODO Auto-generated method stub
		return irmapper.allActibityDatas(acdto);
	}
	
	//경험활동 삭제하기
	public void deleteActibity(int ac_num) {
		// TODO Auto-generated method stub
		irmapper.deleteActibity(ac_num);
	}

	//스펙 insert
	public void insertSpec(IruckseoSpecDto spdto) {
		// TODO Auto-generated method stub
		irmapper.insertSpec(spdto);
	}

	//스펙 단건 list 출력
	public List<IruckseoSpecDto> OneSpecDatas(IruckseoSpecDto spdto) {
		// TODO Auto-generated method stub
		return irmapper.OneSpecDatas(spdto);
	}

}
