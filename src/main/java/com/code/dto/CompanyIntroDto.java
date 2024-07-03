package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("CompanyIntroDto")
public class CompanyIntroDto {

	private String ci_num;
	private String c_num;
	private String ci_logo;
	private String ci_image;
	private String ci_soge;
	private String ci_link;
	private Timestamp ci_writeday;
	
	//CompanyDto join
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
	
	//private String sc_c_num;
	
}
