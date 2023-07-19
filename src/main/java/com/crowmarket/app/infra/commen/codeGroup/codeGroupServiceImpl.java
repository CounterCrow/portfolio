package com.crowmarket.app.infra.commen.codeGroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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

	@Override
	public int selectOneCount(codeGroupVo vo) {
		// 
		return dao.selectOneCount(vo);
	}
	@PostConstruct
	public void selectlistCashedCodeGroupArrayList() throws Exception{
		List<codeGroup> codeGroupListFormDb = (ArrayList<codeGroup>) dao.selectlistCashedCodeGroupArrayList();
		codeGroupListFormDb = (ArrayList<codeGroup>) dao.selectlistCashedCodeGroupArrayList();
		codeGroup.cashedCodeGroupArrayList.clear();
		codeGroup.cashedCodeGroupArrayList.addAll(codeGroupListFormDb);
		System.out.println("CashedCodeGroupArrayList: "+codeGroup.cashedCodeGroupArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		codeGroup.cashedCodeGroupArrayList.clear();
	}
	

}
