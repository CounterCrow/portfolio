package com.crowmarket.app.infra.common.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MemberDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.commen.member.memberMapp";
	public List<Member> selectList(){return sqlSession.selectList(namespace+".memberList","");}
	public List<Member> shSelectList(MemberVo vo){return sqlSession.selectList(namespace+".shMemberList",vo);}
	public Member selectOne(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo );}
	public Member loginUser(MemberVo vo){ return sqlSession.selectOne(namespace + ".loginUser", vo );}
	public Member loginAdmin(MemberVo vo){ return sqlSession.selectOne(namespace + ".loginAdmin", vo );}
	public Member checkID(MemberVo vo){ return sqlSession.selectOne(namespace + ".selectID", vo );}
	public Member signUpSelectID(MemberVo vo){ return sqlSession.selectOne(namespace + ".signUpSelectID", vo );}
	public Integer  signUpChackID(MemberVo vo) {return sqlSession.selectOne(namespace+".signUpChackID",vo);}
	public int signUpInsert(Member dto) {return sqlSession.insert(namespace+".signUpInsert",dto);}
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public int updele(Member dto) {return sqlSession.update(namespace+".updele",dto);}
	public int getAdmin(Member dto) {return sqlSession.update(namespace+".getAdmin",dto);}
	public int loseAdmin(Member dto) {return sqlSession.update(namespace+".loseAdmin",dto);}
}

