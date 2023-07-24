package com.crowmarket.app.infra.commen.product;

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
	private static String namespace = "com.crowmarket.app.infra.commen.product.productMapp";
	
	public int selectOneCount(ProductVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Product> selectList(){return sqlSession.selectList(namespace+".selectList","");}
	public List<Product> shSelectList(ProductVo vo){return sqlSession.selectList(namespace+".shSelectList",vo);}
	public Product selectOne(ProductVo vo){ return sqlSession.selectOne(namespace + ".selectOne", vo ); }
	public int update(Product dto) {return sqlSession.update(namespace+".update",dto);}
	public int updele(Product dto) {return sqlSession.update(namespace+".updele",dto);}
	public int save(Product dto) {return sqlSession.insert(namespace+".save",dto);}
}
