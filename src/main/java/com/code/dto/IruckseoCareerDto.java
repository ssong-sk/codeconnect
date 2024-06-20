package com.code.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoCareerDto")
public class IruckseoCareerDto {
	
	private int ca_num;
	private int pe_num;
	private String ca_name;
	private String ca_ipsa;
	private String ca_resign;
	private String ca_work;
	private String ca_position;
	private String ca_content;

}
