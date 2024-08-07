package com.code.dto;

import java.sql.Date;
import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("RDto")
public class RegisterDto {
	
	private String r_num;
	private String r_id; 
	private String r_pass; 
	private String r_name;
	private String r_nickname;
	private String r_birthday;
	private String r_hp; 
	private String r_zipcode; 
	private String r_addr; 
	private String r_addr_detail;
	private String r_email;
	private String r_gender;
	private Timestamp r_gaipday;
	private String r_job;
	private String r_exp;
	private String r_sogae;
	
	//스크랩
	private int h_num;
	private int s_num;
	private boolean scraped;


}
