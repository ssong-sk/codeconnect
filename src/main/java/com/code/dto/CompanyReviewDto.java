package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("CompanyReviewDto")
public class CompanyReviewDto {

	private String cr_num;
	private String c_num;
	private String r_id;
	private int cr_happy;
	private int cr_environment;
	private int cr_culture;
	private int cr_possibility;
	private int cr_heads;
	private String cr_comment;
	private Timestamp cr_writeday;
	
}
