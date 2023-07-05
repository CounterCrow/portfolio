package com.crowmarket.app.infra.commen.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class codeGroupController {
	
	@Autowired codeGroupServiceImpl service;
	
	
	@RequestMapping(value="/codeGroupList")
	public String shSelectList(codeGroupVo vo, Model model) {
		List<codeGroup>listsh = service.shSelectList(vo);
		model.addAttribute("list",listsh);
		return "/cdm/infra/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupForm")
	public String selectOne(codeGroupVo vo, Model model) {
		codeGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
		return "/cdm/infra/codeGroup/codeGroupForm";
	}
	
	 @RequestMapping(value="/codeGroupUpdate")
	 public String update(codeGroup dto) {
		 service.update(dto);		
	  return "redirect:/codeGroupList";
	  }
	
	@RequestMapping(value="/codeGroupUpdele")
	public String updele(codeGroup dto) {
		  service.updele(dto);	
		  return "redirect:/codeGroupList";
	}
	 @RequestMapping(value="/codeGroupSave")
	 public String save(codeGroup dto) {
		  service.save(dto);	
		  return "redirect:/codeGroupList";
	}
	 @RequestMapping(value="/codeGroupDelete")
	 public String delete(codeGroup dto) {
		  service.delete(dto);	
		  return "redirect:/codeGroupList";
	}

}
