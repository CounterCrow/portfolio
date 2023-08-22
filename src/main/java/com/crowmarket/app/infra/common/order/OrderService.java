package com.crowmarket.app.infra.common.order;

import java.util.List;

public interface OrderService {

	public int userOrder(Order dto);
	public List<Order> selectUserOrderList(OrderVo vo);
	public int orderCount(OrderVo vo);
}
