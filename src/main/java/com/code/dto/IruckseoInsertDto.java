package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
@Alias("IruckseoInsertDto")
public class IruckseoInsertDto {
	
	private int pe_num;
	private int r_num;
	private MultipartFile myphoto;
	private String pe_image;
	private String pe_category;
	private String pe_title;
	private String pe_filepath;
	private Timestamp pe_writeday;

}
