package com.code.dto;

import java.sql.Date;


import org.apache.ibatis.type.Alias;


import lombok.Data;

@Data
@Alias("hdto")
public class HireDto {
	
	private int h_num;
	private int h_c_num;
	private int h_ci_num;
	private String h_category;
	private String h_job;
	private String h_tech;
	private String h_career;
	private String h_grade;
	private String h_location;
	private String h_title;
	private String h_subject;
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
	
	private String c_name;
	private String c_birthyear;
	private String ci_image;
	private String ci_logo;
	private String ci_soge;

}