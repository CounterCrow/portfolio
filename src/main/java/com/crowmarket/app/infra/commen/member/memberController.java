package com.crowmarket.app.infra.commen.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class memberController {
	@Autowired
	memberServiceImpl service;
	
	@ResponseBody
	@RequestMapping("/adminLogin")
	public Map<String,Object> selectOne(memberVo vo,HttpSession httpSession){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		member rtMember = service.selectOne(vo);
		
		if(rtMember != null) {

			httpSession.setMaxInactiveInterval(60*60);//min60
			httpSession.setAttribute("sessionId",vo.getMemberId());
			returnMap.put("rtMember",rtMember);
			returnMap.put("rt","success");
		}else {
			returnMap.put("rt","fail");
		}
		
		
		return returnMap;
	}

	
	
}
