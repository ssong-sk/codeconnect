package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.SupportDto;

@Mapper
public interface SupportMapperInter {

	public void insertSupport(SupportDto dto);
	//기업의 '전체지원자 관리'페이지에서 사용할내용: c_num을 통해 지원자 리스트 보기
	public List<SupportDto> selectSupportByCnum(String c_num);
	//기업의 '전체지원자 관리'페이지에서 사용할내용: st_result update
	public SupportDto updateSupportResult(String st_num);
	// 기업의 '전체 지원자 관리' 페이지에서 사용할 내용: st_result update
    public void updateSupportResult(String st_num, String st_result);
}