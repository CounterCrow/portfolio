package com.crowmarket.app.infra.commen.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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

	@Override
	public int selectOneCount(codeVo vo) {
		
		return dao.selectOneCount(vo);
	}
	@PostConstruct
	public void selectlistCashedCodeArrayList() throws Exception{
		List<code> codeListFormDb = (ArrayList<code>) dao.selectlistCashedCodeArrayList();
		codeListFormDb = (ArrayList<code>) dao.selectlistCashedCodeArrayList();
		code.cashedCodeArrayList.clear();
		code.cashedCodeArrayList.addAll(codeListFormDb);
		System.out.println("CashedCodeArrayList: "+code.cashedCodeArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		code.cashedCodeArrayList.clear();
	}
	
	public static List<code> selectListCachedCode(String codeGroupSeq) throws Exception{
		List<code> rt = new ArrayList<code>();
		for(code codeRow : code.cashedCodeArrayList) {
			if(codeRow.getCodeGroup_seq().equals(codeGroupSeq)) {
			rt.add(codeRow);
		}else {
			//by pass
		}
	}
		return rt;
	}
	
	/*public static String selectOneCachedCode(int codeSeq) throws Exception {
		String rt = "";
		for(code codeRow : code.cashedCodeArrayList) {
			if(codeRow.getCodeSeq().equals(Integer.toString(codeSeq))) {
				rt = codeRow.getCodeKO();
			} else {
				//by pass
			}
			
		}
		
	}*/

}
