package com.crowmarket.app.infra.commen.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

public class codeServiceimpl implements codeService{
	
	@Autowired
	codeDao dao;
	

	@Override
	public List<code> selectList(Model model) {
		
		return dao.selectList();
	}

	@Override
	public List<code> selectListsh(codeVo vo) {
		
		return dao.selectListsh(vo);
	}

	@Override
	public code selectOne(codeVo vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public int update(code dto) {
		
		return dao.update(dto);
	}

	@Override
	public int updele(code dto) {
		
		return dao.updele(dto);
	}

	@Override
	public int delete(code dto) {
		
		return dao.delete(dto);
	}

	@Override
	public int save(code dto) {
		
		return dao.save(dto);
	}

}
