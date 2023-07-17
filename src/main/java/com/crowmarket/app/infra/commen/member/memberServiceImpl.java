package com.crowmarket.app.infra.commen.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class memberServiceImpl implements memberServise{
	
	
	@Autowired
	memberDao dao;

	@Override
	public List<member> memberList() {
		
		return dao.selectList();
	}
	
	@Override
	public List<member> shMemberList(memberVo vo) {
		
		return dao.shSelectList(vo);
	}
	@Override
	public member login(memberVo vo) {
		
		return dao.login(vo);
	}

	@Override
	public member checkID(memberVo vo) {
		
		return dao.checkID(vo);
	}

	@Override
	public int signUpInsert(member dto) {
		
		return dao.signUpInsert(dto);
	}

	@Override
	public Integer  signUpChackID(memberVo vo) {
		
		return dao.signUpChackID(vo);
	}

	@Override
	public member signUpSelectID(memberVo vo) {
		
		return dao.signUpSelectID(vo);
	}

	@Override
	public int updele(member dto) {
		
		return dao.updele(dto);
	}

	@Override
	public int selectOneCount(memberVo vo) {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public member selectOne(memberVo vo) {
		
		return dao.selectOne(vo);
	}


	
}
