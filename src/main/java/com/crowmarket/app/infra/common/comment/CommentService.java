package com.crowmarket.app.infra.common.comment;

import java.util.List;

public interface CommentService {

	public List<Comment> selectListComment(CommentVo vo);
	public List<Comment> selectListReComment(CommentVo vo);
	public List<Comment> productSelectListComment(CommentVo vo);
	public int selectOneCount(CommentVo vo);
	public int update(Comment dto);
	public int updele(Comment dto);
	public int saveComment(Comment dto);
	public int saveReComment(Comment dto);
}
