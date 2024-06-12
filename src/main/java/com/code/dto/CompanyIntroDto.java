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
	
}
