package com.crowmarket.app.infra.common.product;

import com.crowmarket.app.infra.common.base.Base;

public class Product extends Base{
	
	private String productSeq;
	private String typeCD;
	private String purposeCD;
	private String connectionTypeCD;
	private String productArrangementCD;
	private String brandCD;
	private String productName;
	private String productHeight;
	private String productWidth;
	private String productLength;
	private String productWeight;
	private String productPrice;
	private String saleNY;
	private String productFinalPrice;
	
	
//	----------------------------------------------------------
	public String getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}
	public String getTypeCD() {
		return typeCD;
	}
	public void setTypeCD(String typeCD) {
		this.typeCD = typeCD;
	}
	public String getBrandCD() {
		return brandCD;
	}
	public void setBrandCD(String brandCD) {
		this.brandCD = brandCD;
	}
	public String getConnectionTypeCD() {
		return connectionTypeCD;
	}
	public void setConnectionTypeCD(String connectionTypeCD) {
		this.connectionTypeCD = connectionTypeCD;
	}
	public String getProductHeight() {
		return productHeight;
	}
	public void setProductHeight(String productHeight) {
		this.productHeight = productHeight;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductWidth() {
		return productWidth;
	}
	public void setProductWidth(String productWidth) {
		this.productWidth = productWidth;
	}
	public String getProductLength() {
		return productLength;
	}
	public void setProductLength(String productLength) {
		this.productLength = productLength;
	}
	public String getProductWeight() {
		return productWeight;
	}
	public void setProductWeight(String productWeight) {
		this.productWeight = productWeight;
	}
	public String getProductArrangementCD() {
		return productArrangementCD;
	}
	public void setProductArrangementCD(String productArrangementCD) {
		this.productArrangementCD = productArrangementCD;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductFinalPrice() {
		return productFinalPrice;
	}
	public void setProductFinalPrice(String productFinalPrice) {
		this.productFinalPrice = productFinalPrice;
	}
	public String getsaleNY() {
		return saleNY;
	}
	public void setsaleNY(String saleNY) {
		this.saleNY = saleNY;
	}
	public String getPurposeCD() {
		return purposeCD;
	}
	public void setPurposeCD(String purposeCD) {
		this.purposeCD = purposeCD;
	}
	
}
