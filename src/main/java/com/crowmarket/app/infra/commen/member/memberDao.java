package com.crowmarket.app.infra.commen.member;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class memberDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.commen.member.memberMapp";
	public member selectOne(memberVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo );}
	public member checkID(memberVo vo){ return sqlSession.selectOne(namespace + ".selectID", vo );}
	public int signUpInsert(member dto) {return sqlSession.insert(namespace+".signUpInsert",dto);}
	public Integer  signUpChackID(memberVo vo) {return sqlSession.selectOne(namespace+".signUpChackID",vo);}
	public member signUpSelectID(memberVo vo){ return sqlSession.selectOne(namespace + ".signUpSelectID", vo );}
}

