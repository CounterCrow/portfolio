package com.crowmarket.app.infra.common.order;

import com.crowmarket.app.infra.common.base.Base;

public class Order extends Base{

	private String orderSeq;
	private Integer orderCount;
	private String orderAddress;
	private String orderAddressDetails;
	private Integer orderPrice;
	private Integer orderStateCD;
	private String productName;
	private String productPrice;
	private String productFinalPrice;
	private Integer memberSeq;
	private Integer productSeq;
	
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
	public Integer getOrderStateCD() {
		return orderStateCD;
	}
	public void setOrderStateCD(Integer orderStateCD) {
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
	public Integer getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(Integer memberSeq) {
		this.memberSeq = memberSeq;
	}
	public Integer getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(Integer productSeq) {
		this.productSeq = productSeq;
	}
	public String getProductFinalPrice() {
		return productFinalPrice;
	}
	public void setProductFinalPrice(String productFinalPrice) {
		this.productFinalPrice = productFinalPrice;
	}
	
	
}
