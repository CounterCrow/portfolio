package com.crowmarket.app.infra.common.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class OrderDao {

		@Inject
		@Resource(name="sqlSession")
		private SqlSession  sqlSession;
		private static String namespace = "com.crowmarket.app.infra.common.order.orderMapp";
		
		public List<Order> selectUserOrderList(OrderVo vo){return sqlSession.selectList(namespace+".selectUserOrderList",vo);}
		public int userOrder(Order dto) {return sqlSession.insert(namespace+".userOrder",dto);}
		public int orderCount(OrderVo vo) {return sqlSession.selectOne(namespace+".orderCount" ,vo);}
	
}
