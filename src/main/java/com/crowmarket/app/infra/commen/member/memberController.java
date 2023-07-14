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
	private memberServiceImpl service;
	
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

	@RequestMapping(value="/signUpInsert")
	 public String signUpInsert(member dto) {
		  service.signUpInsert(dto);	
		  return "projact01/login";
	}

	@ResponseBody
	@RequestMapping(value="/signUpChackID")
	public Map<String,Object> signUpChackID(memberVo vo){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		Integer checkID = service.signUpChackID(vo);
		if(checkID != null && checkID != 0) {
			returnMap.put("rt","fail");
		}else {
			returnMap.put("rt","success");
		}
		
		
		return returnMap;
	}
	
}
