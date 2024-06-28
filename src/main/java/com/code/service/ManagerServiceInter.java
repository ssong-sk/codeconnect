package com.code.service;

import java.util.HashMap;
import java.util.List;

import com.code.dto.CompanyDto;
import com.code.dto.CustomerDto;
import com.code.dto.RegisterDto;

public interface ManagerServiceInter {
	
	//회원 관리	
	public int countRegister();
	public List<RegisterDto> getAllRegister(int start, int perpage);
	public RegisterDto getRegister(String r_num);
	public void updateRegister(RegisterDto dto);
	public void deleteRegister(String r_num);
	
	//기업 관리
	public int countCompany();
	public List<CompanyDto> getAllCompany(int start, int perpage);
	public CompanyDto getCompany(String c_num);
	
	//공지 관리
	public int countCustomer();
	public List<CustomerDto> getAllCustomer(int start, int perpage);
	public CustomerDto getCustomer(int cus_num);
	public void insertCustomer(CustomerDto dto);
	public void updateCustomer(CustomerDto dto);
	public void deleteCustomer(int cus_num);

}
