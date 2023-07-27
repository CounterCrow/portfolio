package com.crowmarket.app.infra.common.category;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	CategoryDao dao;

	@Override
	public int selectOneCount(CategoryVo vo) {
	
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Category> selectList(Model model) {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public List<Category> shSelectList(CategoryVo vo) {
		// TODO Auto-generated method stub
		return dao.shSelectList(vo);
	}

	@Override
	public Category selectOne(CategoryVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Category dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int updele(Category dto) {
		// TODO Auto-generated method stub
		return dao.updele(dto);
	}

	@Override
	public int save(Category dto) {
		// TODO Auto-generated method stub
		return dao.save(dto);
	}
	@PostConstruct
	public void selectlistCashedCategoryArrayList() throws Exception{
		List<Category> CategoryListFormDb = (ArrayList<Category>) dao.selectlistCashedCategoryArrayList();
		CategoryListFormDb = (ArrayList<Category>) dao.selectlistCashedCategoryArrayList();
		Category.cashedCategoryArrayList.clear();
		Category.cashedCategoryArrayList.addAll(CategoryListFormDb);
		System.out.println("CashedCategoryArrayList: "+Category.cashedCategoryArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		Category.cashedCategoryArrayList.clear();
	}
	
	public static List<Category> selectListCachedCategory(String CategorySeq) throws Exception{
		List<Category> rt = new ArrayList<Category>();
		for(Category CategoryRow : Category.cashedCategoryArrayList) {
			if(CategoryRow.getCategoryParents().equals(CategorySeq)) {
			rt.add(CategoryRow);
		}else {
			//by pass
		}
	}
		return rt;
	}
}
