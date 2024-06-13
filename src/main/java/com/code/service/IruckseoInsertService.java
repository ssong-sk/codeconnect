package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoSchoolDto;
import com.code.mapper.IruckseoInsertMapperInter;

@Service
public class IruckseoInsertService implements IruckseoInsertServiceInter {
	
	//school mapperinter
	@Autowired
	IruckseoInsertMapperInter scmapper;

	//personal insert 
	public void insertPersonal(IruckseoInsertDto irdto) {
		// TODO Auto-generated method stub
		scmapper.insertPersonal(irdto);
	}
	
	//school insert
	@Override
	public void insertSchool(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		scmapper.insertSchool(scdto);
	}

	//school list 출력하기
	@Override
	public List<IruckseoSchoolDto> allSchoolDatas(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		return scmapper.allSchoolDatas(scdto);
	}

	//학력 school 삭제하기
	public void deleteSchool(int sc_num) {
		// TODO Auto-generated method stub
		scmapper.deleteSchool(sc_num);
	}

	

}
