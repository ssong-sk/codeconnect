package com.code.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.code.dto.CustomerDto;
import com.code.mapper.CustomerMapperInter;

@Service
@Primary
public class CustomerService implements CustomerServiceInter {

	@Autowired
	CustomerMapperInter mapper;
	
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return mapper.getTotalCount();
	}

	@Override
	public void insertCustomer(CustomerDto dto) {
		mapper.insertCustomer(dto);
		
	}

	@Override
	public List<CustomerDto> getAllDatas() {
		// TODO Auto-generated method stub
		return mapper.getAllDatas();
	}

	@Override
	public CustomerDto getData(int cus_num) {
		CustomerDto dto=mapper.getData(cus_num);
		
		return dto;
	}

	@Override
	public void updateCustomer(CustomerDto dto) {
		mapper.updateCustomer(dto);
		
	}

	@Override
	public void deleteCustomer(String cus_num) {
		mapper.deleteCustomer(cus_num);
		
	}

}
