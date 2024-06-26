package com.code.dto;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("sdto")
public class SupportDto {

	private int st_num;
	private int r_num;
	private int pe_num;
	private int h_num;
	private int c_num;
	private String st_result;
	private String st_support;
	private String st_open;
	private Timestamp st_write;
	
	//hire테이블과 join
	private int h_ci_num;
	private String h_category;
	private String h_job;
	private String h_tech;
	private String h_career;
	private String h_grade;
	private String h_location;
	private String h_title;
	private String h_major;
	private String h_require;
	private String h_preference;
	private String h_benefit;
	private String h_process;
	private String h_salary;
	private String h_c_id;
	private String h_deadline;
	private String h_writeday;
	private int h_count;
	
	
	//register 테이블과 join
	private String r_name;
	
	
}