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
	public int signUpSave(member dto) {
		
		return dao.signUpSave(dto);
	}

	@Override
	public member signUpChackID(memberVo vo) {
		
		return dao.signUpChackID(vo);
	}

	
}
