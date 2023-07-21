package com.crowmarket.app.infra.commen.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class CodeGroupController {
	
	@Autowired CodeGroupServiceImpl service;
	
	
	@RequestMapping(value="/codeGroupList")
	public String shSelectList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		vo.setKeyNameKO(vo.getKeyNameKO() == null ? "" : vo.getKeyNameKO());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> listsh = service.shSelectList(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "/cdm/infra/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value="/codeGroupForm")
	public String selectOne(CodeGroupVo vo, Model model) {
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item",item);
		return "/cdm/infra/codeGroup/codeGroupForm";
	}
	
	 @RequestMapping(value="/codeGroupUpdate")
	 public String update(CodeGroup dto) {
		 service.update(dto);		
	  return "redirect:/codeGroupList";
	  }
	
	@RequestMapping(value="/codeGroupUpdele")
	public String updele(CodeGroup dto) {
		  service.updele(dto);	
		  return "redirect:/codeGroupList";
	}
	 @RequestMapping(value="/codeGroupSave")
	 public String save(CodeGroup dto) {
		  service.save(dto);	
		  return "redirect:/codeGroupList";
	}
	 @RequestMapping(value="/codeGroupDelete")
	 public String delete(CodeGroup dto) {
		  service.delete(dto);	
		  return "redirect:/codeGroupList";
	}

}
