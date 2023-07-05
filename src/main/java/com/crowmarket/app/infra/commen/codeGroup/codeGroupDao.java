package com.crowmarket.app.infra.commen.codeGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class codeGroupDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.commen.codeGroup.codeGroupMapp";
	public List<codeGroup> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<codeGroup> shSelectList(codeGroupVo vo){return sqlSession.selectList(namespace+".shSelectList",vo);}
	public codeGroup selectOne(codeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(codeGroup dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(codeGroup dto) {return sqlSession.update(namespace+".updele",dto);}
	public int delete(codeGroup dto) {return sqlSession.delete(namespace+".delete",dto);}
	public int save(codeGroup dto) {return sqlSession.insert(namespace+".save",dto);}
	
}
