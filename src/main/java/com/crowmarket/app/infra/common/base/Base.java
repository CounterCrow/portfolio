package com.crowmarket.app.infra.common.base;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class Base {
	
	private Integer delNY;
	private String regIP;
	private Timestamp regDT;
	private String modIP;
	private Timestamp modDT;
	private String remIP;
	private Timestamp remDT;
	
	// 업로드 이미지관련
	private MultipartFile[] uploadImg;
	private Integer uploadImgType;	
	private Integer uploadImgMaxNumber;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	
	/*---------------------------------------*/
	public Integer getDelNY() {
		return delNY;
	}
	public void setDelNY(Integer delNY) {
		this.delNY = delNY;
	}
	public String getRegIP() {
		return regIP;
	}
	public void setRegIP(String regIP) {
		this.regIP = regIP;
	}
	public Timestamp getRegDT() {
		return regDT;
	}
	public void setRegDT(Timestamp regDT) {
		this.regDT = regDT;
	}
	public String getModIP() {
		return modIP;
	}
	public void setModIP(String modIP) {
		this.modIP = modIP;
	}
	public Timestamp getModDT() {
		return modDT;
	}
	public void setModDT(Timestamp modDT) {
		this.modDT = modDT;
	}
	public String getRemIP() {
		return remIP;
	}
	public void setRemIP(String remIP) {
		this.remIP = remIP;
	}
	public Timestamp getRemDT() {
		return remDT;
	}
	public void setRemDT(Timestamp remDT) {
		this.remDT = remDT;
	}
	// ----------------Uploaded img
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
	

	
	

}
