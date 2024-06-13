package com.code.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.IruckseoSchoolDto;

@Mapper
public interface IruckseoInsertMapperInter {
	
	//school insert
	public void insertSchool (IruckseoSchoolDto scdto);

}
