package com.crowmarket.app.infra.commen.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class codeDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.commen.code.codeMpp";
	public List<code> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<code> selectListsh(codeVo vo){return sqlSession.selectList(namespace+".selectListsh",vo);}
	public code selectOne(codeVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(code dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(code dto) {return sqlSession.update(namespace+".updele",dto);}
	public int delete(code dto) {return sqlSession.delete(namespace+".delete",dto);}
	public int save(code dto) {return sqlSession.insert(namespace+".save",dto);}
	
}
