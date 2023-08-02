package com.crowmarket.app.infra.common.comment;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CommentDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.common.comment.commentMapp";
	
	public List<Comment> selectListComment(CommentVo vo){return sqlSession.selectList(namespace+".selectListComment",vo);}
	public List<Comment> selectListReComment(CommentVo vo){return sqlSession.selectList(namespace+".selectListReComment",vo);}
	public int selectOneCount(CommentVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public int update(Comment dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(Comment dto) {return sqlSession.update(namespace+".updele",dto);}
	public int saveComment(Comment dto) {return sqlSession.insert(namespace+".comment",dto);}
	public int saveReComment(Comment dto) {return sqlSession.insert(namespace+".reComment",dto);}

}
