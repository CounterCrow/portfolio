package com.crowmarket.app.infra.modules.signUp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class signUpController {
	
	@Autowired
	signUpServiceImpl service;
	
	@RequestMapping(value="/signUpSave")
	 public String save(signUp dto) {
		  service.save(dto);	
		  return "projact01/login";
	}

}
