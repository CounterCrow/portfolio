package com.crowmarket.app.infra.common.member;

import java.util.List;

public interface MemberServise {
	
	public List<Member> memberList();
	public List<Member> shMemberList(MemberVo vo);
	public Member loginAdmin(MemberVo vo);
	public Member loginUser(MemberVo vo);
	public Member selectOne(MemberVo vo);
	public Member checkID(MemberVo vo);
	public Member signUpSelectID(MemberVo vo);
	public int signUpInsert(Member dto);
	public Integer  signUpChackID(MemberVo vo);
	public int updele(Member dto);
	public int selectOneCount(MemberVo vo);
	public int getAdmin(Member dto);
	public int loseAdmin(Member dto);
}
