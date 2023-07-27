package com.crowmarket.app.infra.common.product;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao dao;
	
	@Override
	public int selectOneCount(ProductVo vo) {
	
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Product> selectList(Model model) {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public List<Product> shSelectList(ProductVo vo) {
		// TODO Auto-generated method stub
		return dao.shSelectList(vo);
	}

	@Override
	public Product selectOne(ProductVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Product dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int updele(Product dto) {
		// TODO Auto-generated method stub
		return dao.updele(dto);
	}

	@Override
	public int save(Product dto) {
		// TODO Auto-generated method stub
		return dao.save(dto);
	}
	@PostConstruct
	public void selectlistCashedProductArrayList() throws Exception{
		List<Product> ProductListFormDb = (ArrayList<Product>) dao.selectlistCashedProductArrayList();
		ProductListFormDb = (ArrayList<Product>) dao.selectlistCashedProductArrayList();
		Product.cashedProductArrayList.clear();
		Product.cashedProductArrayList.addAll(ProductListFormDb);
		System.out.println("CashedProductArrayList: "+Product.cashedProductArrayList.size()+"cashed!");
	}
	public static void clear() throws Exception{
		Product.cashedProductArrayList.clear();
	}
	
	public static List<Product> selectListCachedProduct() throws Exception{
		List<Product> rt = new ArrayList<Product>();
		for(Product ProductRow : Product.cashedProductArrayList) {
			if(ProductRow.getDelNY() == 0) {
			rt.add(ProductRow);
		}else {
			//by pass
		}
	}
		return rt;
	}

	
}
