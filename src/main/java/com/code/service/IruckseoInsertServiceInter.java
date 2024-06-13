package com.code.service;

import java.util.List;

import com.code.dto.IruckseoInsertDto;
import com.code.dto.IruckseoSchoolDto;

public interface IruckseoInsertServiceInter {

	//personal insert _ pe_num 등록
	public void insertPersonal(IruckseoInsertDto irdto);
	
	//insert school
	public void insertSchool (IruckseoSchoolDto scdto);
	
	//school 전체 list 출력
	public List<IruckseoSchoolDto> allSchoolDatas(IruckseoSchoolDto scdto);
	
	//학력 school 삭제 
    public void deleteSchool(int sc_num);
}
