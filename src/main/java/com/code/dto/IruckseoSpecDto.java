package com.code.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoSpecDto")
public class IruckseoSpecDto {
	
	private int sp_num;
	private int pe_num;
	private String sp_category;
	private String sp_ce_name;
	private String sp_ce_organization;
	private String sp_ce_pass;
	private String sp_ce_passday;
	private String sp_la_name;
	private String sp_la_passday;
	private String sp_la_grade;
	private String sp_aw_name;
	private String sp_aw_organization;
	private String sp_aw_sangday;

}
