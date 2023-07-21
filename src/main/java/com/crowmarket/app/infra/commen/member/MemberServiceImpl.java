package com.crowmarket.app.infra.commen.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberServise{
	
	
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> memberList() {
		
		return dao.selectList();
	}
	
	@Override
	public List<Member> shMemberList(MemberVo vo) {
		System.out.println("gender:"+vo.getKeyGender());
		System.out.println("id:"+vo.getKeyID());
		return dao.shSelectList(vo);
	}
	@Override
	public Member loginAdmin(MemberVo vo) {
		
		return dao.loginAdmin(vo);
	}
	@Override
	public Member loginUser(MemberVo vo) {
		
		return dao.loginUser(vo);
	}

	@Override
	public Member checkID(MemberVo vo) {
		
		return dao.checkID(vo);
	}

	@Override
	public int signUpInsert(Member dto) {
		
		return dao.signUpInsert(dto);
	}

	@Override
	public Integer  signUpChackID(MemberVo vo) {
		
		return dao.signUpChackID(vo);
	}

	@Override
	public Member signUpSelectID(MemberVo vo) {
		
		return dao.signUpSelectID(vo);
	}

	@Override
	public int updele(Member dto) {
		
		return dao.updele(dto);
	}

	@Override
	public int selectOneCount(MemberVo vo) {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public Member selectOne(MemberVo vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public int getAdmin(Member dto) {
		// TODO Auto-generated method stub
		return dao.getAdmin(dto);
	}

	@Override
	public int loseAdmin(Member dto) {
		// TODO Auto-generated method stub
		return dao.loseAdmin(dto);
	}


	
}
