package com.crowmarket.app.infra.common.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/codegroup")
public class CodeGroupRestController {
	
	@Autowired CodeGroupServiceImpl service;

	@GetMapping("")
//	@RequestMapping(value = "", method = RequestMethod.GET)
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		List<CodeGroup> shlist = service.shSelectList(vo);
		
		return shlist;
	}
	
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
	public CodeGroup selectOne(@PathVariable String seq, CodeGroupVo vo) throws Exception {
		vo.setCodeGroupSeq(seq);
		CodeGroup item = service.selectOne(vo);
		return item;
	}
	

	@RequestMapping(value = "", method = RequestMethod.POST)
//	@PostMapping("")
	public String insert( CodeGroup dto) throws Exception {
		service.save(dto);
		System.out.println("123123123");
		return dto.getCodeGroupSeq();
	}
	
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.PUT)
//	@PatchMapping("/{seq}")
	public void update(@PathVariable String seq, CodeGroup dto) throws Exception {
		dto.setCodeGroupSeq(seq);
		service.update(dto);
	}
	
	
//	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
	@DeleteMapping("/{seq}")
	public void delete(@PathVariable String seq, @RequestBody CodeGroup dto) throws Exception {
		dto.setCodeGroupSeq(seq);
		service.delete(dto);
	}

	
}
