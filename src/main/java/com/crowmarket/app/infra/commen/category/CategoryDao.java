package com.crowmarket.app.infra.commen.category;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.commen.category.categoryMapp";
	
	public int selectOneCount(CategoryVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Category> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<Category> shSelectList(CategoryVo vo){return sqlSession.selectList(namespace+".shSelectList",vo);}
	public Category selectOne(CategoryVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(Category dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(Category dto) {return sqlSession.update(namespace+".updele",dto);}
	public int save(Category dto) {return sqlSession.insert(namespace+".save",dto);}
	public List<Category> selectlistCashedCategoryArrayList(){
		return sqlSession.selectList(namespace+".selectlistCashedCategoryArrayList",null);}
}
