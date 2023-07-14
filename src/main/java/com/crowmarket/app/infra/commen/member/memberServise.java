package com.crowmarket.app.infra.commen.member;


public interface memberServise {
	
	
	public member selectOne(memberVo vo);
	public member checkID(memberVo vo);
	public int signUpInsert(member dto);
	public Integer  signUpChackID(memberVo vo);
	public member signUpSelectID(memberVo vo);
	
}
