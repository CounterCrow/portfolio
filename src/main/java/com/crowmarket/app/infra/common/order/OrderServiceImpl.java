package com.crowmarket.app.infra.common.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao dao;
	
	@Override
	public int userOrder(Order dto) {
		
		return dao.userOrder(dto);
	}
	
	

}
