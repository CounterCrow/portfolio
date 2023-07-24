package com.crowmarket.app.infra.common.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CodeController {
	
	@Autowired CodeServiceImpl service;
	
	
	@RequestMapping(value="/codeList")
	public String shSelectList(@ModelAttribute("vo") CodeVo vo, Model model) {
		vo.setKeyNameKO(vo.getKeyNameKO() == null ? "" : vo.getKeyNameKO());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Code> listsh = service.shSelectList(vo);
			model.addAttribute("list", listsh);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		return "/cdm/infra/code/codeList";
	}
	
	@RequestMapping(value="/codeForm")
	public String selectOne(CodeVo vo, Model model) {
		Code item = service.selectOne(vo);
		model.addAttribute("item",item);
		return "/cdm/infra/code/codeForm";
	}
	
	 @RequestMapping(value="/codeUpdate")
	 public String update(Code dto) {
		 service.update(dto);		
	  return "redirect:/codeList";
	  }
	
	@RequestMapping(value="/codeUpdele")
	public String updele(Code dto) {
		  service.updele(dto);	
		  return "redirect:/codeList";
	}
	 @RequestMapping(value="/codeSave")
	 public String save(Code dto) {
		  service.save(dto);	
		  return "redirect:/codeList";
	}
	 @RequestMapping(value="/codeDelete")
	 public String delete(Code dto) {
		  service.delete(dto);	
		  return "redirect:/codeList";
	}

}
