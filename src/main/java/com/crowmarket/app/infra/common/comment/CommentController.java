package com.crowmarket.app.infra.common.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CommentController {
	
	@Autowired CommentServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value="/saveComment")
	public Map<String,Object> saveComment(Comment dto) throws Exception{
	Map<String,Object> returnMap = new HashMap<String,Object>();
	
	Integer commentSave = service.saveComment(dto);
	if(commentSave != null && commentSave != 0) {
		returnMap.put("rt","success");
	}else {
		returnMap.put("rt","fail");
	}
	return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/commentList")
	public Map<String,Object> productSelectListComment(CommentVo vo) throws Exception{
	Map<String,Object> returnMap = new HashMap<String,Object>();
	List<Comment> productSelectListComment = service.productSelectListComment(vo);
	System.out.println(productSelectListComment);
	if(productSelectListComment != null ) {
		returnMap.put("rt","success");
		returnMap.put("listComment",productSelectListComment);
		System.out.println("컨트롤러 조건 성공");
	}else {
		returnMap.put("rt","fail");
	}
	
	return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/commentDele")
	public Map<String,Object> updele(Comment dto) throws Exception{
		Map<String,Object> returnMap = new HashMap<String,Object>();
		
		int deleComment = service.updele(dto);
		if(deleComment !=0) {
			returnMap.put("rt","success");
		}else {
			returnMap.put("rt","fail");
		}
		
		return returnMap;
		
	} 
	
	@ResponseBody
	@RequestMapping(value="/commentCount")
	public Map<String,Object> selectOneCount(CommentVo vo) throws Exception{
		Map<String,Object> returnMap = new HashMap<String,Object>();
		
		int countComment = service.selectOneCount(vo);
		if(countComment !=0) {
			returnMap.put("rt","success");
			returnMap.put("rt",countComment);
		}else {
			returnMap.put("rt","fail");
		}
		
		return returnMap;
		
	} 
}
