package com.crowmarket.app.infra.modules.signUp;


public interface signUpService {

	
	public int save(signUp dto);
	public boolean chackID(String id);
	
}
