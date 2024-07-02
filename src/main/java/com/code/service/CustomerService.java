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
        return mapper.getTotalCount();
    }

    @Override
    public void insertCustomer(CustomerDto dto) {
        mapper.insertCustomer(dto);
    }

    @Override
    public List<CustomerDto> getAllDatas() {
        return mapper.getAllDatas();
    }

    @Override
    public CustomerDto getData(int cus_num) {
        return mapper.getData(cus_num);
    }

    @Override
    public void updateCustomer(CustomerDto dto) {
        mapper.updateCustomer(dto);
    }

    @Override
    public void deleteCustomer(String cus_num) {
        mapper.deleteCustomer(cus_num);
    }

    @Override
    public List<CustomerDto> getDatasByType(String cus_top_type) {
        return mapper.getDatasByType(cus_top_type);
    }

    @Override
    public int getCountByType(String cus_top_type) {
        return mapper.getCountByType(cus_top_type);
    }

    @Override
    public List<CustomerDto> getPagedDatasByType(String cus_top_type, int startRow, int pageSize) {
        return mapper.getPagedDatasByType(cus_top_type, startRow, pageSize);
    }

    //noticeform에서 삽입된 게시글의 번호를 가져오는 메서드
    @Override
	public int getLastInsertedId() {
		return mapper.getLastInsertedId();
	}

	@Override
	public List<CustomerDto> getEventsByCategory(String category) {
		return mapper.getEventsByCategory(category);
	}

	@Override
	public int getCountByCategory(String category) {
		return mapper.getCountByCategory(category);
	}

	@Override
	public void moveExpiredEventsToClosed() {
	    mapper.moveExpiredEventsToClosed();
	}

	@Override
	public int getCountByTypeAndUser(String cus_top_type, String cus_user_id) {
		return mapper.getCountByTypeAndUser(cus_top_type, cus_user_id);
	}

	@Override
	public List<CustomerDto> getPagedDatasByTypeAndUser(String cus_top_type, String cus_user_id, int startRow, int pageSize) {
		return mapper.getPagedDatasByTypeAndUser(cus_top_type, cus_user_id, startRow, pageSize);
	}

	@Override
    public void updateAnswer(int cus_num, String answer) {
        mapper.updateAnswer(cus_num, answer);
    }

    @Override
    public void modifyAnswer(int cus_num, String answer) {
        mapper.modifyAnswer(cus_num, answer);
    }

	
}
