package com.crowmarket.app.infra.commen.code;

import java.util.List;

import org.springframework.ui.Model;

public interface codeService {
	
	public int selectOneCount(codeVo vo);
	public List<code> selectList(Model model);
	public List<code> shSelectList(codeVo vo);
	public code selectOne(codeVo vo);
	public int update(code dto); 
	public int updele(code dto); 
	public int delete(code dto); 
	public int save(code dto); 
}
