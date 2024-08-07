package com.code.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.code.dto.CompanyDto;
import com.code.dto.CustomerDto;
import com.code.dto.RegisterDto;

@Mapper
public interface ManagerMapperInter {
	
	//회원 관리	
	public int countRegister();
	public List<RegisterDto> getAllRegister(HashMap<String, Integer> map);
	public RegisterDto getRegister(String r_num);
	public void updateRegister(RegisterDto dto);
	public void deleteRegister(String r_num);
	
	//기업 관리
	public int countCompany();
	public List<CompanyDto> getAllCompany(HashMap<String, Integer> map);
	public CompanyDto getCompany(String c_num);
	
	//공지 관리
	public int countCustomer();
	public List<CustomerDto> getAllCustomer(HashMap<String, Integer> map);
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
	public List<CustomerDto> getAllCustomerInquiry(HashMap<String, Integer> map);
	public void updateInquiry(CustomerDto dto);
	public void deleteInquiry(CustomerDto dto);
	

}
