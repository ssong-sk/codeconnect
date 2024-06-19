package com.code.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoSelfDto")
public class IruckseoSelfDto {
	
	private int se_num;
	private int pe_num;
	private String se_subject;
	private String se_content;

}
