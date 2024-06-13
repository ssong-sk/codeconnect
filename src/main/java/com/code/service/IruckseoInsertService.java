package com.code.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.IruckseoSchoolDto;
import com.code.mapper.IruckseoInsertMapperInter;

@Service
public class IruckseoInsertService implements IruckseoInsertServiceInter {
	
	//school mapperinter
	@Autowired
	IruckseoInsertMapperInter scmapper;

	//school insert
	@Override
	public void insertSchool(IruckseoSchoolDto scdto) {
		// TODO Auto-generated method stub
		scmapper.insertSchool(scdto);
	}

}
