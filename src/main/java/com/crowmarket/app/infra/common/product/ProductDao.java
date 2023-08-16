package com.crowmarket.app.infra.common.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ProductDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession  sqlSession;
	private static String namespace = "com.crowmarket.app.infra.common.product.productMapp";
	
	public int selectOneCount(ProductVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Product> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<Product> shSelectList(ProductVo vo){return sqlSession.selectList(namespace+".shSelectList",vo);}
	public List<Product> brandSelectList(ProductVo vo){return sqlSession.selectList(namespace+".brandSelectList",vo);}
	public Product selectOne(ProductVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public Product selectCompetition1(ProductVo vo){ return sqlSession.selectOne(namespace + ".selectCompetition1", vo ); }
	public Product selectCompetition2(ProductVo vo){ return sqlSession.selectOne(namespace + ".selectCompetition2", vo ); }
	public int update(Product dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(Product dto) {return sqlSession.update(namespace+".updele",dto);}
	public int save(Product dto) {return sqlSession.insert(namespace+".save",dto);}
	public List<Product> selectlistCashedProductArrayList(){
		return sqlSession.selectList(namespace+".selectlistCashedProductArrayList",null);}
	public int insertUploaded(Product dto) { return sqlSession.insert(namespace + ".insertUploaded", dto); }
	
}

