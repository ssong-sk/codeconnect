package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CustomerDto;

@Mapper
public interface CustomerMapperInter {

	public int getTotalCount(); //전체 게시글 수 조회
	public void insertCustomer(CustomerDto dto); //글 삽입
    List<CustomerDto> getAllDatas(); //모든 데이터 조회
    public CustomerDto getData(int cus_num); //특정 게시글 데이터 조회
    public void updateCustomer(CustomerDto dto);
    public void deleteCustomer(String cus_num);
}
