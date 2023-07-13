package com.crowmarket.app.infra.modules.signUp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class signUpServiceImpl implements signUpService{

	@Autowired
	signUpDao dao;
	@Override
	public int save(signUp dto) {

		return dao.save(dto);
	}
	@Override
	public signUp checkID(signUpVo vo) {
		
		return dao.checkID(vo);
	}

	
}
