package com.code.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoHopeDto")
public class IruckseoHopeDto {

	private int ho_num;
	private int pe_num;
	private String ho_category;
	private String ho_money;
	private String ho_check;
	private String ho_addr;
	private String ho_keyword;
}
