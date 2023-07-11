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
	public boolean chackID(String id) {
        int count = dao.chackID(id);
        return count > 0;
    }

	
}
