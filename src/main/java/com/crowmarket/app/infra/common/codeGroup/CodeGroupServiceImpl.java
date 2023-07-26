package com.crowmarket.app.infra.common.codeGroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


@Service
public class CodeGroupServiceImpl implements CodeGroupService{
	
	@Autowired
	CodeGroupDao dao;
	

	@Override
	public List<CodeGroup> selectList(Model model) {
		
		return dao.selectList();
	}

	@Override
	public List<CodeGroup> shSelectList(CodeGroupVo vo) {
		
		return dao.shSelectList(vo);
	}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public int update(CodeGroup dto) {
		
		return dao.update(dto);
	}

	@Override
	public int updele(CodeGroup dto) {
		
		return dao.updele(dto);
	}

	@Override
	public int delete(CodeGroup dto) {
		
		return dao.delete(dto);
	}

	@Override
	public int save(CodeGroup dto) {
		
		return dao.save(dto);
	}

	@Override
	public int selectOneCount(CodeGroupVo vo) {
		// 
		return dao.selectOneCount(vo);
	}
	@PostConstruct
	public void selectlistCashedCodeGroupArrayList() throws Exception{
		List<CodeGroup> codeGroupListFormDb = (ArrayList<CodeGroup>) dao.selectlistCashedCodeGroupArrayList();
		codeGroupListFormDb = (ArrayList<CodeGroup>) dao.selectlistCashedCodeGroupArrayList();
		CodeGroup.cashedCodeGroupArrayList.clear();
		CodeGroup.cashedCodeGroupArrayList.addAll(codeGroupListFormDb);
		System.out.println("CashedCodeGroupArrayList: "+CodeGroup.cashedCodeGroupArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		CodeGroup.cashedCodeGroupArrayList.clear();
	}
	
	  public static List<CodeGroup> selectListCachedCodeGroup(String codeGroupSeq)
	  throws Exception{ List<CodeGroup> rt = new ArrayList<CodeGroup>();
	  for(CodeGroup codeRow : CodeGroup.cashedCodeGroupArrayList) {
	  if(codeRow.getCodeGroupSeq().equals(codeGroupSeq)) { rt.add(codeRow); }else {
	  //by pass
		  } } return rt; }
	 
	

}
