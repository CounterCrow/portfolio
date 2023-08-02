package com.crowmarket.app.infra.common.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommentController {
	
	@Autowired CommentServiceImpl service;
	
	@RequestMapping(value="/saveComment")
	public Map<String,Object> saveComment(Comment dto){
	Map<String,Object> returnMap = new HashMap<String,Object>();
	int commentList = service.saveComment(dto);
	returnMap.put("rt","success");
	returnMap.put("rt",commentList);
	
	return returnMap;
	}
	
}
