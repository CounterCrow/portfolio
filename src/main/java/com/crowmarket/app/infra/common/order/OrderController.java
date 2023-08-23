package com.crowmarket.app.infra.common.order;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@RequestMapping(value="orderList")
	public String orderList(@ModelAttribute("vo") OrderVo vo, Model model,HttpSession httpSession) {
		vo.setKeyMember_memberSeq((String) httpSession.getAttribute("sessionUserSeq"));
		vo.setParamsPaging(service.orderCount(vo));
		System.out.println("세션유저Seq : "+httpSession.getAttribute("sessionUserSeq"));
		if(vo.getTotalRows() > 0) {
			List<Order> list = service.selectUserOrderList(vo);
			model.addAttribute("list", list);
			System.out.println(list);
		} else {
//			by pass
		}
		  
		  return "project01/infra/subpage/orderList"; }
}
