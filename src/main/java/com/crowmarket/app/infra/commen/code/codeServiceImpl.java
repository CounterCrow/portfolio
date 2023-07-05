package com.crowmarket.app.infra.commen.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class codeServiceImpl implements codeService{
	
	@Autowired
	codeDao dao;
	

	@Override
	public List<code> selectList(Model model) {
		
		return dao.selectList();
	}

	@Override
	public List<code> shSelectList(codeVo vo) {
		
		return dao.shSelectList(vo);
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
