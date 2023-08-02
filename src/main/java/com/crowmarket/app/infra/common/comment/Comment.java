package com.crowmarket.app.infra.common.comment;

import com.crowmarket.app.infra.common.base.Base;

public class Comment extends Base{

	private Object[] review;
	private String commentSeq;
	private Integer commentParents;
	private Integer commentDepth;
	private Integer commentOrder;
	private String commentText;
	private Integer commentScore;
	private String member_memberSeq;
	private String product_productSeq;
	
	/*------GETTER/SETTER-----*/
	
	public Object[] getReview() {
		return review;
	}
	public void setReview(Object[] review) {
		this.review = review;
	}
	public String getCommentSeq() {
		return commentSeq;
	}
	public void setCommentSeq(String commentSeq) {
		this.commentSeq = commentSeq;
	}
	public Integer getCommentParents() {
		return commentParents;
	}
	public void setCommentParents(Integer commentParents) {
		this.commentParents = commentParents;
	}
	public Integer getCommentDepth() {
		return commentDepth;
	}
	public void setCommentDepth(Integer commentDepth) {
		this.commentDepth = commentDepth;
	}
	public Integer getCommentOrder() {
		return commentOrder;
	}
	public void setCommentOrder(Integer commentOrder) {
		this.commentOrder = commentOrder;
	}
	public String getCommentText() {
		return commentText;
	}
	public void setCommentText(String commentText) {
		this.commentText = commentText;
	}
	public Integer getCommentScore() {
		return commentScore;
	}
	public void setCommentScore(Integer commentScore) {
		this.commentScore = commentScore;
	}
	public String getMember_memberSeq() {
		return member_memberSeq;
	}
	public void setMember_memberSeq(String member_memberSeq) {
		this.member_memberSeq = member_memberSeq;
	}
	public String getProduct_productSeq() {
		return product_productSeq;
	}
	public void setProduct_productSeq(String product_productSeq) {
		this.product_productSeq = product_productSeq;
	}
	
	
}
