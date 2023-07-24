package com.crowmarket.app.infra.common.category;

import java.util.List;

import org.springframework.ui.Model;

public interface CategoryService {

	public int selectOneCount(CategoryVo vo);
	public List<Category> selectList(Model model);
	public List<Category> shSelectList(CategoryVo vo);
	public Category selectOne(CategoryVo vo);
	public int update(Category dto); 
	public int updele(Category dto); 
	public int save(Category dto); 
}
