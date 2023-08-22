package com.crowmarket.app.infra.common.order;



import com.crowmarket.app.infra.common.base.PageVo;

public class OrderVo extends PageVo{
	// my order에 필요한 vo
	private String keyMember_memberSeq;
	private Integer keyValue;
	
	

	public String getKeyMember_memberSeq() {
		
		return keyMember_memberSeq;
	}

	public void setKeyMember_memberSeq(String keyMember_memberSeq) {
		this.keyMember_memberSeq = keyMember_memberSeq;
	}

	public Integer getKeyValue() {
		return keyValue;
	}

	public void setKeyValue(Integer keyValue) {
		this.keyValue = keyValue;
	}
	
	
}
