package com.code.dto;

import java.sql.Date;
import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("CustomerDto")
public class CustomerDto {

	private int cus_num;
	private String cus_user_id;
	private String cus_top_type;
	private String cus_category;
	private String cus_title;
	private String cus_content;
	private String cus_photo;
	private Timestamp cus_writetime;
	private String cus_answer;
	private String cus_answer_status; //답변 상태 컬럼 추가
	private String cus_target; //이벤트 대상
	private Date cus_startday; //공고 시작일
	private Date cus_endday; //공고 마감일
}
