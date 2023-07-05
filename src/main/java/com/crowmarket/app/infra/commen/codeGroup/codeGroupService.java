package com.crowmarket.app.infra.commen.codeGroup;

import java.util.List;

import org.springframework.ui.Model;

public interface codeGroupService {

	public List<codeGroup> selectList(Model model);
	public List<codeGroup> shSelectList(codeGroupVo vo);
	public codeGroup selectOne(codeGroupVo vo);
	public int update(codeGroup dto); 
	public int updele(codeGroup dto); 
	public int delete(codeGroup dto); 
	public int save(codeGroup dto); 
}
