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

	//이벤트 관리
	public int countCustomerEvent();
	public List<CustomerDto> getAllCustomerEvent(int start, int perpage);
	public void insertCustomerEvent(CustomerDto dto);
	public void updateCustomerEvent(CustomerDto dto);
	public void deleteCustomerEvent(int cus_num);
	
	//1:1문의 관리
	public int countInquiry();
	public int getCountInquirySuccess();
	public int getCountInquiryStandBy();
	public List<CustomerDto> getAllCustomerInquiry(int start, int perpage);
	public void updateInquiry(CustomerDto dto);
	public void deleteInquiry(CustomerDto dto);
}
