package com.crowmarket.app.infra.commen.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


@Service
public class CodeServiceImpl implements CodeService{
	
	@Autowired
	CodeDao dao;
	

	@Override
	public List<Code> selectList(Model model) {
		
		return dao.selectList();
	}

	@Override
	public List<Code> shSelectList(CodeVo vo) {
		
		return dao.shSelectList(vo);
	}

	@Override
	public Code selectOne(CodeVo vo) {
		
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		
		return dao.update(dto);
	}

	@Override
	public int updele(Code dto) {
		
		return dao.updele(dto);
	}

	@Override
	public int delete(Code dto) {
		
		return dao.delete(dto);
	}

	@Override
	public int save(Code dto) {
		
		return dao.save(dto);
	}

	@Override
	public int selectOneCount(CodeVo vo) {
		
		return dao.selectOneCount(vo);
	}
	@PostConstruct
	public void selectlistCashedCodeArrayList() throws Exception{
		List<Code> codeListFormDb = (ArrayList<Code>) dao.selectlistCashedCodeArrayList();
		codeListFormDb = (ArrayList<Code>) dao.selectlistCashedCodeArrayList();
		Code.cashedCodeArrayList.clear();
		Code.cashedCodeArrayList.addAll(codeListFormDb);
		System.out.println("CashedCodeArrayList: "+Code.cashedCodeArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		Code.cashedCodeArrayList.clear();
	}
	
	public static List<Code> selectListCachedCode(String codeGroupSeq) throws Exception{
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cashedCodeArrayList) {
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
