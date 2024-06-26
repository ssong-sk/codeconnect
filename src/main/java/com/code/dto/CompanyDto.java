package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("CompanyDto")
public class CompanyDto {

	private String c_num;
	private String c_id;
	private String c_pass;
	private String c_name;
	private String c_reginum;
	private String c_phone;
	private String c_local;
	private String c_category;
	private String c_peoplesu;
	private String c_insa_email;
	private String c_insa_phone;
	private String c_addr;
	private int c_money;
	private String c_birthyear;
	private String c_regi_file;
	private int c_salary;
	private Timestamp c_gaipday;
	private Timestamp c_updateday;
	
	private String c_addrdetail;
	private String c_postnum;
	
	private String c_size;//기업의 규모:대/중견/중소/공기업 추가
	
	
	//스크랩
	private int s_num;
	private int r_num;
	private String r_id;
	private boolean scraped;
	
	
}
