package com.crowmarket.app.infra.common.comment;

import com.crowmarket.app.infra.common.base.PageVo;

public class CommentVo extends PageVo{

	private String keyCommentSeq;
	private Integer keyCommentParents;
	private Integer keyCommentDepth;
	private Integer keyCommentOrder;
	private String keyCommentText;
	private Integer keyCommentScore;
	private String keyMember_memberSeq;
	private String keyProduct_productSeq;
	
	/*---------GETTER/SETTER---------*/
	public String getKeyCommentSeq() {
		return keyCommentSeq;
	}
	public void setKeyCommentSeq(String keyCommentSeq) {
		this.keyCommentSeq = keyCommentSeq;
	}
	public Integer getKeyCommentParents() {
		return keyCommentParents;
	}
	public void setKeyCommentParents(Integer keyCommentParents) {
		this.keyCommentParents = keyCommentParents;
	}
	public Integer getKeyCommentDepth() {
		return keyCommentDepth;
	}
	public void setKeyCommentDepth(Integer keyCommentDepth) {
		this.keyCommentDepth = keyCommentDepth;
	}
	public Integer getKeyCommentOrder() {
		return keyCommentOrder;
	}
	public void setKeyCommentOrder(Integer keyCommentOrder) {
		this.keyCommentOrder = keyCommentOrder;
	}
	public String getKeyCommentText() {
		return keyCommentText;
	}
	public void setKeyCommentText(String keyCommentText) {
		this.keyCommentText = keyCommentText;
	}
	public Integer getKeyCommentScore() {
		return keyCommentScore;
	}
	public void setKeyCommentScore(Integer keyCommentScore) {
		this.keyCommentScore = keyCommentScore;
	}
	public String getKeyMember_memberSeq() {
		return keyMember_memberSeq;
	}
	public void setKeyMember_memberSeq(String keyMember_memberSeq) {
		this.keyMember_memberSeq = keyMember_memberSeq;
	}
	public String getKeyProduct_productSeq() {
		return keyProduct_productSeq;
	}
	public void setKeyProduct_productSeq(String keyProduct_productSeq) {
		this.keyProduct_productSeq = keyProduct_productSeq;
	}
	
	
}
