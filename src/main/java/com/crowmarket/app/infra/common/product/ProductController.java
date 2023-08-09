package com.crowmarket.app.infra.common.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


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
	 public String update(Product dto) {
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
		  service.uploadFiles(dto.getUploadImg(), dto, "productImg", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
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
		  
		  return "projact01/infra/subpage/shopList"; }
	  	
	  @RequestMapping(value="/shopDetails") public String shopDetails(ProductVo vo, Model model) {
			Product item = service.selectOne(vo);
			model.addAttribute("item",item);
		  
		  return "projact01/infra/subpage/shopDetails"; }
	
	
	
}
