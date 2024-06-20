package com.code.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
@Alias("IruckseoPortfolioDto")
public class IruckseoPortfolioDto {

	private int pe_num;
	private int po_num;
	private String po_file;
	private String po_filepath;

}
