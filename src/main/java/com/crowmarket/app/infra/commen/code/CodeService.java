package com.crowmarket.app.infra.commen.code;

import java.util.List;

import org.springframework.ui.Model;

public interface CodeService {
	
	public int selectOneCount(CodeVo vo);
	public List<Code> selectList(Model model);
	public List<Code> shSelectList(CodeVo vo);
	public Code selectOne(CodeVo vo);
	public int update(Code dto); 
	public int updele(Code dto); 
	public int delete(Code dto); 
	public int save(Code dto); 
}
