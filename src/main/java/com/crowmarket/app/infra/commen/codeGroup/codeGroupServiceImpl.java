package com.crowmarket.app.infra.commen.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class codeGroupServiceImpl implements codeGroupService{
	
	@Autowired
	codeGroupDao dao;
	

	@Override
	public List<codeGroup> selectList(Model model) {
		
		return dao.selectList();
	}

	@Override
	public List<codeGroup> shSelectList(codeGroupVo vo) {
		
		return dao.shSelectList(vo);
	}

	@Override
	public codeGroup selectOne(codeGroupVo vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public int update(codeGroup dto) {
		
		return dao.update(dto);
	}

	@Override
	public int updele(codeGroup dto) {
		
		return dao.updele(dto);
	}

	@Override
	public int delete(codeGroup dto) {
		
		return dao.delete(dto);
	}

	@Override
	public int save(codeGroup dto) {
		
		return dao.save(dto);
	}

}
