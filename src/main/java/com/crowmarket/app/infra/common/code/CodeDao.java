package com.crowmarket.app.infra.common.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CodeDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.common.code.codeMapp";
	
	public int selectOneCount(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Code> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<Code> shSelectList(CodeVo vo){return sqlSession.selectList(namespace+".shSelectList",vo);}
	public Code selectOne(CodeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(Code dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(Code dto) {return sqlSession.update(namespace+".updele",dto);}
	public int delete(Code dto) {return sqlSession.delete(namespace+".delete",dto);}
	public int save(Code dto) {return sqlSession.insert(namespace+".save",dto);}
	public List<Code> selectlistCashedCodeArrayList(){
		return sqlSession.selectList(namespace+".selectlistCashedCodeArrayList",null);
	}
}
