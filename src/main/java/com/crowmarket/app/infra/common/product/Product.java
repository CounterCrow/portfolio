package com.crowmarket.app.infra.common.product;

import java.util.ArrayList;
import java.util.List;

import com.crowmarket.app.infra.common.base.Base;

public class Product extends Base{
// product	
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
	
//	uploaded
	private String tableName;
	
	private String productImgSeq;
	private Integer type;
	private Integer defaultNY;
	private Integer sort;
	private String path;
	private String originalName;
	private String UUID;
	private String ext;
	private Integer size;
	
	
	
	
// --------------------------------------------------------------------------	
	
	
	public static List<Product> cashedProductArrayList = new ArrayList<Product>();
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
	// ---------------uploaded --------------------------------
	
	public String getSaleNY() {
		return saleNY;
	}
	public void setSaleNY(String saleNY) {
		this.saleNY = saleNY;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getProductImgSeq() {
		return productImgSeq;
	}
	public void setProductImgSeq(String productImgSeq) {
		this.productImgSeq = productImgSeq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNY() {
		return defaultNY;
	}
	public void setDefaultNY(Integer defaultNY) {
		this.defaultNY = defaultNY;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUUID() {
		return UUID;
	}
	public void setUUID(String uUID) {
		UUID = uUID;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	
	
}
