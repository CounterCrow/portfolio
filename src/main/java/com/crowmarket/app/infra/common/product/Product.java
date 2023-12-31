package com.crowmarket.app.infra.common.product;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

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
	private Integer saleNY;
	private String productFinalPrice;
	
//	uploaded
	private String tableName;
	
	private String productImgSeq;
	private Integer type;
	private Integer defaultNY;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private String pseq;
	
	private MultipartFile[] uploadImg;
	private Integer uploadImgType;	
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	

	// sortShopList 추가 컬럼
	private String brand;
	private Integer productCommentCount;
	


	
// ---------------------------이미지 업로드-----------------------------------------------	
	
	
	public Integer getSaleNY() {
		return saleNY;
	}
	public void setSaleNY(Integer saleNY) {
		this.saleNY = saleNY;
	}
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer getUploadImgType() {
		return uploadImgType;
	}
	public void setUploadImgType(Integer uploadImgType) {
		this.uploadImgType = uploadImgType;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
// ----------------------------------------------------------
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
	public String getPurposeCD() {
		return purposeCD;
	}
	public void setPurposeCD(String purposeCD) {
		this.purposeCD = purposeCD;
	}
	// ---------------uploaded --------------------------------
	
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
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public Integer getProductCommentCount() {
		return productCommentCount;
	}
	public void setProductCommentCount(Integer productCommentCount) {
		this.productCommentCount = productCommentCount;
	}
	

	
}
