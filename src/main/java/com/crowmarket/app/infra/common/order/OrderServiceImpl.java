package com.crowmarket.app.infra.common.order;

import java.util.List;

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

	@Override
	public List<Order> selectUserOrderList(OrderVo vo) {
		
		return dao.selectUserOrderList(vo);
	}

	@Override
	public int orderCount(OrderVo vo) {
		System.out.println("서비스 : "+vo.getKeyMember_memberSeq());
		return dao.orderCount(vo);
	}
	
	

}
