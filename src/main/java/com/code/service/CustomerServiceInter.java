package com.code.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.code.dto.CustomerDto;

public interface CustomerServiceInter {

	public int getTotalCount(); //전체 게시글 수 조회
	public void insertCustomer(CustomerDto dto); //글 삽입
    public List<CustomerDto> getAllDatas(); //모든 데이터 조회
    public CustomerDto getData(int cus_num); //특정 게시글 데이터 조회
    public void updateCustomer(CustomerDto dto);
    public void deleteCustomer(String cus_num);
    
    //타입별 데이터 조회
    public List<CustomerDto> getDatasByType(@Param("cus_top_type") String cus_top_type); 
    //타입별 게시글 수 조회
    public int getCountByType(@Param("cus_top_type") String cus_top_type); 
    //페이징 처리된 데이터 조회
    public List<CustomerDto> getPagedDatasByType(@Param("cus_top_type") String cus_top_type, @Param("startRow") int startRow, @Param("pageSize") int pageSize); 
    //noticeform에서 삽입된 게시글의 번호를 가져오는 메서드
    public int getLastInsertedId(); 
    //카테고리별 이벤트 가져오는 메서드
    public List<CustomerDto> getEventsByCategory(String category); 
    
    //카테고리별 게시글 수 조회 메서드(event)
    public int getCountByCategory(String category);
    
    //event 마감된 이벤트로 넘기기
    public void moveExpiredEventsToClosed();
    
    //inquirylist 회원 작성글 구분
    public int getCountByTypeAndUser(String cus_top_type, String cus_user_id);
    public List<CustomerDto> getPagedDatasByTypeAndUser(String cus_top_type, String cus_user_id, int startRow, int pageSize);

    //관리자가 답글을 달 때 cus_writetime 필드가 변경되지 않도록 하기 위해,
    //답변 업데이트 시 cus_writetime 필드를 제외한 다른 필드만 업데이트하도록 하는 쿼리
    public void updateAnswer(int cus_num, String answer);
    public void modifyAnswer(int cus_num, String answer);
}
