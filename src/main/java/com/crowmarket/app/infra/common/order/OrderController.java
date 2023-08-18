package com.crowmarket.app.infra.common.order;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(value="/order/")
public class OrderController {
	
	@Autowired
	private OrderServiceImpl service;
	
	@RequestMapping(value="userOrder")
	public String userOrder(Order dto, HttpServletRequest request) {
		service.userOrder(dto);
		String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
	}
	@ResponseBody
	@RequestMapping(value="setModalVal")
	public Map<String,Object> setModalVal(Order dto) throws Exception{
	Map<String,Object> returnMap = new HashMap<String,Object>();
	
		returnMap.put("rt","success");
		returnMap.put("rt","success");
	return returnMap;
	}

}
