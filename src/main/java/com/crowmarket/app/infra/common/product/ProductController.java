package com.crowmarket.app.infra.common.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class ProductController {
	
	@Autowired ProductServiceImpl service;
	
	@RequestMapping(value="/productList")
	public String shSelectList(@ModelAttribute("vo") ProductVo vo, Model model) {
		vo.setKeyName(vo.getKeyName() == null ? "" : vo.getKeyName());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Product> listsh = service.shSelectList(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "/cdm/infra/product/productList";
	}
	@RequestMapping(value="/productForm")
	public String selectOne(ProductVo vo, Model model) {
		Product item = service.selectOne(vo);
		
		model.addAttribute("item",item);
		return "/cdm/infra/product/productForm";
	}
	 @RequestMapping(value="/productUpdate")
	 public String update(Product dto)throws Exception {
		 service.update(dto);		
	  return "redirect:/productList";
	  }
	
	@RequestMapping(value="/productUpdele")
	public String updele(Product dto) {
		  service.updele(dto);	
		  return "redirect:/productList";
	}
	 @RequestMapping(value="/productSave")
	 public String save(Product dto) throws Exception {
		  service.save(dto);	
		  return "redirect:/productList";
	}
	 @RequestMapping(value="/shopList") 
	 public String shopList(@ModelAttribute("vo") ProductVo vo, Model model) {
			vo.setKeyName(vo.getKeyName() == null ? "" : vo.getKeyName());
			
			vo.setParamsPaging(service.selectOneCount(vo));
			
			if(vo.getTotalRows() > 0) {
				List<Product> listsh = service.shSelectList(vo);
				
				model.addAttribute("list", listsh);
//				model.addAttribute("vo", vo);
			} else {
//				by pass
			}
		  
		  return "project01/infra/subpage/shopList"; }
	  	
	  @RequestMapping(value="/shopDetails") public String shopDetails(ProductVo vo, Model model) {
			Product item = service.selectOne(vo);
			Product competition1 = service.selectCompetition1(vo);
			Product competition2 = service.selectCompetition2(vo);
			List<Product> brandProductList = service.brandSelectList(vo);
			model.addAttribute("item",item);
			model.addAttribute("competition1",competition1);
			model.addAttribute("competition2",competition2);
			model.addAttribute("brandList",brandProductList);
			System.out.println("컴페 : ");
		  return "project01/infra/subpage/shopDetails"; }
	  
	    @ResponseBody
		@RequestMapping(value="/T1/competitionProduct")
		public Map<String,Object> selectCompetition1(ProductVo vo) throws Exception{
			Map<String,Object> returnMap = new HashMap<String,Object>();
			Product competition1 = service.selectCompetition1(vo);
			if(competition1 != null) {
				returnMap.put("rt","success");
				returnMap.put("item2", competition1);
				
				System.out.println(competition1.getProductPrice());
			}else {
				returnMap.put("rt","fail");
			}
			System.out.println("asdasda");
			return returnMap;
			
		} 
	
	
	
}
