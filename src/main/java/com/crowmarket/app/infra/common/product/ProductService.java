package com.crowmarket.app.infra.common.product;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;


public interface ProductService {
	public int selectOneCount(ProductVo vo);
	public List<Product> selectList(Model model);
	public List<Product> shSelectList(ProductVo vo);
	public List<Product> brandSelectList(ProductVo vo);
	public Product selectOne(ProductVo vo);
	public Product selectCompetition1(ProductVo vo);
	public Product selectCompetition2(ProductVo vo);
	public int update(Product dto); 
	public int updele(Product dto); 
	public int save(Product dto); 

	public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception;
}
