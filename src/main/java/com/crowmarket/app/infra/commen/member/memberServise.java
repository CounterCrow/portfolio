package com.crowmarket.app.infra.commen.member;

import java.util.List;

public interface memberServise {
	
	public List<member> memberList();
	public List<member> shMemberList(memberVo vo);
	public member login(memberVo vo);
	public member selectOne(memberVo vo);
	public member checkID(memberVo vo);
	public member signUpSelectID(memberVo vo);
	public int signUpInsert(member dto);
	public Integer  signUpChackID(memberVo vo);
	public int updele(member dto);
	public int selectOneCount(memberVo vo);
	
}
