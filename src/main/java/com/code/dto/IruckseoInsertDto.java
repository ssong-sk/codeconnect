package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoInsertDto")
public class IruckseoInsertDto {
	
	private int pe_num;
	private int r_num;
	private String pe_image;
	private String pe_category;
	private String pe_title;
	private Timestamp pe_writeday;

}
