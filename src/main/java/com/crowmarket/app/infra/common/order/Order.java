package com.crowmarket.app.infra.common.order;

import com.crowmarket.app.infra.common.base.Base;

public class Order extends Base{

	private String orderSeq;
	private Integer orderCount;
	private String orderAddress;
	private String orderAddressDetails;
	private Integer orderPrice;
	private String orderStateCD;
	private String productName;
	private String productPrice;
	private String memberSeq;
	private String productSeq;
	
	/*----------getter/setter----------*/
	
	public String getOrderSeq() {
		return orderSeq;
	}
	public void setOrderSeq(String orderSeq) {
		this.orderSeq = orderSeq;
	}
	public Integer getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(Integer orderCount) {
		this.orderCount = orderCount;
	}
	public String getOrderAddress() {
		return orderAddress;
	}
	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}
	public String getOrderAddressDetails() {
		return orderAddressDetails;
	}
	public void setOrderAddressDetails(String orderAddressDetails) {
		this.orderAddressDetails = orderAddressDetails;
	}
	public Integer getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(Integer orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getOrderStateCD() {
		return orderStateCD;
	}
	public void setOrderStateCD(String orderStateCD) {
		this.orderStateCD = orderStateCD;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}
	
	
}
