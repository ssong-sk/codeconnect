package com.code.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dto.CompanyDto;
import com.code.dto.CustomerDto;
import com.code.dto.RegisterDto;
import com.code.mapper.ManagerMapperInter;

@Service
public class ManagerService implements ManagerServiceInter {
	
	@Autowired
	ManagerMapperInter mapper;

	
	//회원관리
	@Override
	public int countRegister() {
		return mapper.countRegister();
	}

	@Override
	public List<RegisterDto> getAllRegister(int start, int perpage) {
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return mapper.getAllRegister(map);
	}

	@Override
	public RegisterDto getRegister(String r_num) {
		return mapper.getRegister(r_num);
	}

	@Override
	public void updateRegister(RegisterDto dto) {
		mapper.updateRegister(dto);
	}

	@Override
	public void deleteRegister(String r_num) {
		mapper.deleteRegister(r_num);
	}


	//기업 관리
	@Override
	public int countCompany() {
		return mapper.countCompany();
	}

	@Override
	public List<CompanyDto> getAllCompany(int start, int perpage) {
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return mapper.getAllCompany(map);
	}

	@Override
	public CompanyDto getCompany(String c_num) {
		return mapper.getCompany(c_num);
	}

	
	//공지 관리
	@Override
	public int countCustomer() {
		return mapper.countCustomer();
	}

	@Override
	public List<CustomerDto> getAllCustomer(int start, int perpage) {
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return mapper.getAllCustomer(map);
	}

	@Override
	public CustomerDto getCustomer(int cus_num) {
		return mapper.getCustomer(cus_num);
	}

	@Override
	public void insertCustomer(CustomerDto dto) {
		mapper.insertCustomer(dto);
		
	}

	@Override
	public void updateCustomer(CustomerDto dto) {
		mapper.updateCustomer(dto);
	}

	@Override
	public void deleteCustomer(int cus_num) {
		mapper.deleteCustomer(cus_num);
	}

	
	//이벤트 관리
	@Override
	public int countCustomerEvent() {
		return mapper.countCustomerEvent();
	}
	
	@Override
	public List<CustomerDto> getAllCustomerEvent(int start, int perpage) {
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return mapper.getAllCustomerEvent(start, perpage);
	}

	@Override
	public void insertCustomerEvent(CustomerDto dto) {
		mapper.insertCustomerEvent(dto);
	}

	@Override
	public void updateCustomerEvent(CustomerDto dto) {
		mapper.updateCustomerEvent(dto);
	}

	@Override
	public void deleteCustomerEvent(int cus_num) {
		mapper.deleteCustomerEvent(cus_num);
	}

	
	//1:1문의 관리
	@Override
	public int countInquiry() {
		return mapper.countInquiry();
	}
	
	@Override
	public int getCountInquirySuccess() {
		return mapper.getCountInquirySuccess();
	}

	@Override
	public int getCountInquiryStandBy() {
		return mapper.getCountInquiryStandBy();
	}

	@Override
	public List<CustomerDto> getAllCustomerInquiry(int start, int perpage) {
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		
		return mapper.getAllCustomerInquiry(map);
	}

	

	


}
