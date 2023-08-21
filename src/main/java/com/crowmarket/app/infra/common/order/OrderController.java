package com.crowmarket.app.infra.common.order;



import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(value="/order/")
public class OrderController {
	
	@Autowired
	private OrderServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value="userOrder")
	public  Map<String,Object> userOrder(Order dto)throws Exception {
		Map<String,Object> returnMap = new HashMap<String,Object>();
		Integer userOrder = service.userOrder(dto);
		if(userOrder != null && userOrder != 0) {
			returnMap.put("rt","success");
		}else {
			returnMap.put("rt","fail");
		}
		return returnMap;
	}
	

}
