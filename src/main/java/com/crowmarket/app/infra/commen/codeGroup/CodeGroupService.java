package com.crowmarket.app.infra.commen.codeGroup;

import java.util.List;

import org.springframework.ui.Model;

public interface CodeGroupService {

	public int selectOneCount(CodeGroupVo vo);
	public List<CodeGroup> selectList(Model model);
	public List<CodeGroup> shSelectList(CodeGroupVo vo);
	public CodeGroup selectOne(CodeGroupVo vo);
	public int update(CodeGroup dto); 
	public int updele(CodeGroup dto); 
	public int delete(CodeGroup dto); 
	public int save(CodeGroup dto); 
}
