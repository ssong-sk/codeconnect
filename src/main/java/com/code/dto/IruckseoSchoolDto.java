package com.code.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IruckseoSchoolDto")
public class IruckseoSchoolDto {
	
	private int sc_num;
	private int pe_num;
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

}
