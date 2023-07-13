package com.crowmarket.app.infra.modules.signUp;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class signUpController {
	
	@Autowired
	signUpServiceImpl service;
	
	@RequestMapping(value="/signUpSave")
	 public String save(signUp dto) {
		  service.save(dto);	
		  return "projact01/login";
	}

	@ResponseBody
	@RequestMapping(value="/checkID")
	public Map<String,Object> checkID(signUpVo vo){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		signUp checkID = service.checkID(vo);
		if(checkID != null) {
			returnMap.put("rt","fail");
		}else {
			returnMap.put("rt","success");
		}
		
		
		return returnMap;
	}
	
}
