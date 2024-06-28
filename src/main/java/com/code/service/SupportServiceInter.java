package com.code.service;

import java.util.List;

import com.code.dto.SupportDto;

public interface SupportServiceInter {

	public void insertSupport(SupportDto dto);
	//기업의 '전체지원자 관리'페이지에서 사용할내용: c_num을 통해 지원자 리스트 보기
	public List<SupportDto> selectSupportByCnum(String c_num);
	// 기업의 '전체 지원자 관리' 페이지에서 사용할 내용: st_result update
	public void updateSupportResult(String st_num, String st_result);
	// 기업의 '전체 지원자 관리'페이지에서 사용할 용도의 update문 : st_open을 '열람'으로 update하기
    public void updateSupportOpen(String st_num);
}
