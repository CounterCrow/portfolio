package com.crowmarket.app.infra.commen.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class memberServiceImpl implements memberServise{
	
	
	@Autowired
	memberDao dao;

	@Override
	public member selectOne(memberVo vo) {
		
		return dao.selectOne(vo);
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

	
}
