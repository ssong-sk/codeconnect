package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.code.dto.CustomerDto;

@Mapper
public interface CustomerMapperInter {

	public int getTotalCount(); //전체 게시글 수 조회
	public void insertCustomer(CustomerDto dto); //글 삽입
    public List<CustomerDto> getAllDatas(); //모든 데이터 조회
    public CustomerDto getData(int cus_num); //특정 게시글 데이터 조회
    public void updateCustomer(CustomerDto dto);
    public void deleteCustomer(String cus_num);
    public List<CustomerDto> getDatasByType(@Param("cus_top_type") String cus_top_type);
    public int getCountByType(@Param("cus_top_type") String cus_top_type);
    public List<CustomerDto> getPagedDatasByType(@Param("cus_top_type") String cus_top_type, @Param("startRow") int startRow, @Param("pageSize") int pageSize);
    public int getLastInsertedId(); // noticeform에서 삽입된 게시글의 번호를 가져오는 메서드
    public List<CustomerDto> getEventsByCategory(@Param("category") String category); // 카테고리별 이벤트 가져오는 메서드
}
