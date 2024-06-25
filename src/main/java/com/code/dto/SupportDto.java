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
	private int st_result;
	private int st_open;
	private Timestamp st_write;
}
