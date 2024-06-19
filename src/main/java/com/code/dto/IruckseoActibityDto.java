package com.code.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoActibityDto")
public class IruckseoActibityDto {

	private int ac_num;
	private int pe_num;
	private String ac_category;
	private String ac_name;
	private String ac_start;
	private String ac_end;
	private String ac_content;
	
}
