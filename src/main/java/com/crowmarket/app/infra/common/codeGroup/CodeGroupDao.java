package com.crowmarket.app.infra.common.codeGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;





@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.commen.codeGroup.codeGroupMapp";
	
	
	public int selectOneCount(CodeGroupVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<CodeGroup> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<CodeGroup> shSelectList(CodeGroupVo vo){return sqlSession.selectList(namespace+".shSelectList",vo);}
	public CodeGroup selectOne(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(CodeGroup dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(CodeGroup dto) {return sqlSession.update(namespace+".updele",dto);}
	public int delete(CodeGroup dto) {return sqlSession.delete(namespace+".delete",dto);}
	public int save(CodeGroup dto) {return sqlSession.insert(namespace+".save",dto);}
	public List<CodeGroup> selectlistCashedCodeGroupArrayList(){
		return sqlSession.selectList(namespace+".selectlistCashedCodeGroupArrayList",null);
	}
	
}
