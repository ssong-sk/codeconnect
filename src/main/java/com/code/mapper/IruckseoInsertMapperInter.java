package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoSchoolDto;

@Mapper
public interface IruckseoInsertMapperInter {
	
	//personal insert _ pe_num 등록
	public void insertPersonal(IruckseoInsertDto irdto);
	
	//school insert
	public void insertSchool(IruckseoSchoolDto scdto);
	
	//school 전체 list 출력
	public List<IruckseoSchoolDto> allSchoolDatas(IruckseoSchoolDto scdto);

	//학력 school 삭제 
	public void deleteSchool(int sc_num);


}
