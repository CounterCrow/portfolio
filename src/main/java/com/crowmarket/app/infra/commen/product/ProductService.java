package com.crowmarket.app.infra.commen.product;

import java.util.List;

import org.springframework.ui.Model;


public interface ProductService {
	public int selectOneCount(ProductVo vo);
	public List<Product> selectList(Model model);
	public List<Product> shSelectList(ProductVo vo);
	public Product selectOne(ProductVo vo);
	public int update(Product dto); 
	public int updele(Product dto); 
	public int save(Product dto); 

}
