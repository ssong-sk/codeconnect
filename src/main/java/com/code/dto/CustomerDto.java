package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("CustomerDto")
public class CustomerDto {

	private int cus_num;
	private String cus_user_id;
	private String cus_category;
	private String cus_title;
	private String cus_content;
	private String cus_photo;
	private Timestamp cus_writetime;
	private String cus_answer;
}
