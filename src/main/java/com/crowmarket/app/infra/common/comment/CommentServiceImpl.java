package com.crowmarket.app.infra.common.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	CommentDao dao;

	@Override
	public List<Comment> selectListComment(CommentVo vo) {
		// TODO Auto-generated method stub
		
		return dao.selectListComment(vo);
	}

	@Override
	public List<Comment> selectListReComment(CommentVo vo) {
		// TODO Auto-generated method stub
		return dao.selectListReComment(vo);
	}

	@Override
	public int selectOneCount(CommentVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int update(Comment dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int updele(Comment dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int saveComment(Comment dto) {
		// TODO Auto-generated method stub
		return dao.saveComment(dto);
	}

	@Override
	public int saveReComment(Comment dto) {
		// TODO Auto-generated method stub
		return dao.saveReComment(dto);
	}

	
}
