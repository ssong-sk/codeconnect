package com.code.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

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
    
    //noticeform에서 삽입된 게시글의 번호를 가져오는 메서드
    public int getLastInsertedId(); 
    
    //카테고리별 이벤트 가져오는 메서드
    public List<CustomerDto> getEventsByCategory(@Param("category") String category); 
    //카테고리별 게시글 수 조회 메서드(event)
    public int getCountByCategory(@Param("category") String category);
    
    //만료된 이벤트를 마감된 이벤트로 이동
    public void moveExpiredEventsToClosed();
    
    //inquirylist 회원 작성글 구분
    public int getCountByTypeAndUser(@Param("cus_top_type") String cus_top_type, @Param("cus_user_id") String cus_user_id);
    public List<CustomerDto> getPagedDatasByTypeAndUser(@Param("cus_top_type") String cus_top_type, @Param("cus_user_id") String cus_user_id, @Param("startRow") int startRow, @Param("pageSize") int pageSize);

    //관리자가 답글을 달 때 cus_writetime 필드가 변경되지 않도록 하기 위해,
    //답변 업데이트 시 cus_writetime 필드를 제외한 다른 필드만 업데이트하도록 하는 쿼리
    @Update("update customer set cus_answer = #{answer}, cus_answer_status = '답변 완료' where cus_num = #{cus_num}")
    public void updateAnswer(@Param("cus_num") int cus_num, @Param("answer") String answer);

    @Update("update customer set cus_answer = #{answer} where cus_num = #{cus_num}")
    public void modifyAnswer(@Param("cus_num") int cus_num, @Param("answer") String answer);
}
