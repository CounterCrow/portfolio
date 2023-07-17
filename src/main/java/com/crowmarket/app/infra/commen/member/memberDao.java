package com.crowmarket.app.infra.commen.member;

import java.util.List;

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
	public List<member> selectList(){return sqlSession.selectList(namespace+".memberList","");}
	public List<member> shSelectList(memberVo vo){return sqlSession.selectList(namespace+".shMemberList",vo);}
	public member selectOne(memberVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo );}
	public member login(memberVo vo){ return sqlSession.selectOne(namespace + ".login", vo );}
	public member checkID(memberVo vo){ return sqlSession.selectOne(namespace + ".selectID", vo );}
	public member signUpSelectID(memberVo vo){ return sqlSession.selectOne(namespace + ".signUpSelectID", vo );}
	public Integer  signUpChackID(memberVo vo) {return sqlSession.selectOne(namespace+".signUpChackID",vo);}
	public int signUpInsert(member dto) {return sqlSession.insert(namespace+".signUpInsert",dto);}
	public int selectOneCount(memberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public int updele(member dto) {return sqlSession.update(namespace+".updele",dto);}
	
	
}

