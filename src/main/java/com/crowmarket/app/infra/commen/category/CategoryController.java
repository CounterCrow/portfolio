package com.crowmarket.app.infra.commen.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CategoryController {

@Autowired CategoryServiceImpl service;
	
	@RequestMapping(value="/CategoryList")
	public String shSelectList(@ModelAttribute("vo") CategoryVo vo, Model model) {
		vo.setKeyNameKO(vo.getKeyNameKO() == null ? "" : vo.getKeyNameKO());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Category> listsh = service.shSelectList(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "/cdm/infra/Category/CategoryList";
	}
	@RequestMapping(value="/CategoryForm")
	public String selectOne(CategoryVo vo, Model model) {
		Category item = service.selectOne(vo);
		model.addAttribute("item",item);
		return "/cdm/infra/Category/CategoryForm";
	}
	 @RequestMapping(value="/CategoryUpdate")
	 public String update(Category dto) {
		 service.update(dto);		
	  return "redirect:/CategoryList";
	  }
	
	@RequestMapping(value="/CategoryUpdele")
	public String updele(Category dto) {
		  service.updele(dto);	
		  return "redirect:/CategoryList";
	}
	 @RequestMapping(value="/CategorySave")
	 public String save(Category dto) {
		  service.save(dto);	
		  return "redirect:/CategoryList";
	}
	
}
