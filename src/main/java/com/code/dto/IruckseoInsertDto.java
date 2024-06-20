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
	
	
	//다른 리스트 가져오기
	private int sc_num;
	private String sc_category;
	private String sc_hi_name;
	private String sc_hi_transfer;
	private String sc_hi_check;
	private String sc_hi_iphack;
	private String sc_hi_jolup;
	private String sc_hi_major;
	private String sc_uni_category;
	private String sc_uni_name;
	private String sc_uni_transfer;
	private String sc_uni_major;
	private String sc_uni_check;
	private String sc_uni_iphack;
	private String sc_uni_jolup;
	private String sc_uni_grade;
	private String sc_uni_sum;

	
	private int ca_num;
	private String ca_name;
	private String ca_ipsa;
	private String ca_resign;
	private String ca_work;
	private String ca_position;
	private String ca_content;
	
	private int ac_num;
	private String ac_category;
	private String ac_name;
	private String ac_start;
	private String ac_end;
	private String ac_content;
	
	private int sp_num;
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
	
	private int po_num;
	private String po_file;
	private String po_filepath;
	
	private int se_num;
	private String se_subject;
	private String se_content;
	
	private int ho_num;
	private String ho_category;
	private String ho_money;
	private String ho_check;
	private String ho_addr;
	private String ho_keyword;

}
