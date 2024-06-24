package com.code.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.SupportDto;

@Mapper
public interface SupportMapperInter {

	public void insertSupport(SupportDto dto);
}