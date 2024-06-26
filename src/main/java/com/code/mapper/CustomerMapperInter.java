package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.code.dto.CustomerDto;

@Mapper
public interface CustomerMapperInter {

	public int getTotalCount(); //전체 게시글 수 조회
	public void insertCustomer(CustomerDto dto); //글 삽입
	
	//페이징 데이터 조회
	//List<CustomerDto> getPagedDatas(@Param("startRow") int startRow, @Param("pageSize") int pageSize); 
	
    List<CustomerDto> getAllDatas(); //모든 데이터 조회
    public CustomerDto getData(int cus_num); //특정 게시글 데이터 조회
    public void updateCustomer(CustomerDto dto);
    public void deleteCustomer(String cus_num);
    
    List<CustomerDto> getDatasByType(@Param("cus_top_type") String cus_top_type);
    int getCountByType(@Param("cus_top_type") String cus_top_type);
    List<CustomerDto> getPagedDatasByType(@Param("cus_top_type") String cus_top_type, @Param("startRow") int startRow, @Param("pageSize") int pageSize);
}
