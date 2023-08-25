package com.crowmarket.app.infra.common.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping(value="/rest/code")
public class CodeRestController {
	
	@Autowired CodeServiceImpl service;
	
	@GetMapping("")
	public List<Code> selectList(CodeVo vo)throws Exception{
		List<Code> shlist = service.shSelectList(vo);
		
		
		return shlist;
	}
	
	@GetMapping("/{seq}")
	public Code selectOne(@PathVariable String seq,CodeVo vo)throws Exception{
		vo.setCodeSeq(seq);
		Code item = service.selectOne(vo);
		return item;
	}
	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
//	@PatchMapping("/{seq}")
	public void update(@PathVariable String seq,  Code dto) throws Exception {
		dto.setCodeSeq(seq);
		service.update(dto);
	}
	
//	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
	@DeleteMapping("/{seq}")
	public void delete(@PathVariable String seq,  Code dto) throws Exception {
		dto.setCodeSeq(seq);
		service.delete(dto);
	}

}
