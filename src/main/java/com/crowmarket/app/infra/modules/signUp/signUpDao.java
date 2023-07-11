package com.crowmarket.app.infra.modules.signUp;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class signUpDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.modules.signUp.signUpMapp";
	
	public int save(signUp dto) {return sqlSession.insert(namespace+".save",dto);}
	public int chackID(String id) {return sqlSession.selectOne(namespace + ".chackID", id);}

}
