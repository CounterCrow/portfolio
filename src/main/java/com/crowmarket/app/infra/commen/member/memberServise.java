package com.crowmarket.app.infra.commen.member;


public interface memberServise {
	
	
	public member selectOne(memberVo vo);
	public member checkID(memberVo vo);
	public int signUpSave(member dto);
	public member signUpChackID(memberVo vo);
	
}
