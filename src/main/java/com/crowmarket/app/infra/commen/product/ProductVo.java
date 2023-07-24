package com.crowmarket.app.infra.commen.product;

import java.sql.Timestamp;

import com.crowmarket.app.infra.commen.base.PageVo;

public class ProductVo extends PageVo{

	private String keySeq;
	private String keyTypeCD;
	private String keyBrandCD;
	private String keyConnectionTypeCD;
	private String keyName;
	private String keyHeight;
	private String keyWidth;
	private String keyLength;
	private String keyWeight;
	private String keyTenkeyNY;
	private String keyPrice;
	private String keySaleNY;
	private String keyDelNY;
	private Timestamp keyRegDT;
	private Timestamp keyModDT;
	private Timestamp keyRemDT;
	
	// ------------------------------------------
	
	public String getKeySeq() {
		return keySeq;
	}
	public void setKeySeq(String keySeq) {
		this.keySeq = keySeq;
	}
	public String getKeyTypeCD() {
		return keyTypeCD;
	}
	public void setKeyTypeCD(String keyTypeCD) {
		this.keyTypeCD = keyTypeCD;
	}
	public String getKeyBrandCD() {
		return keyBrandCD;
	}
	public void setKeyBrandCD(String keyBrandCD) {
		this.keyBrandCD = keyBrandCD;
	}
	public String getKeyHeight() {
		return keyHeight;
	}
	public void setKeyHeight(String keyHeight) {
		this.keyHeight = keyHeight;
	}
	public String getKeyName() {
		return keyName;
	}
	public void setKeyName(String keyName) {
		this.keyName = keyName;
	}
	public String getKeyWidth() {
		return keyWidth;
	}
	public void setKeyWidth(String keyWidth) {
		this.keyWidth = keyWidth;
	}
	public String getKeyLength() {
		return keyLength;
	}
	public void setKeyLength(String keyLength) {
		this.keyLength = keyLength;
	}
	public String getKeyWeight() {
		return keyWeight;
	}
	public void setKeyWeight(String keyWeight) {
		this.keyWeight = keyWeight;
	}
	public String getKeyTenkeyNY() {
		return keyTenkeyNY;
	}
	public void setKeyTenkeyNY(String keyTenkeyNY) {
		this.keyTenkeyNY = keyTenkeyNY;
	}
	public String getKeyPrice() {
		return keyPrice;
	}
	public void setKeyPrice(String keyPrice) {
		this.keyPrice = keyPrice;
	}
	public String getKeySaleNY() {
		return keySaleNY;
	}
	public void setKeySaleNY(String keySaleNY) {
		this.keySaleNY = keySaleNY;
	}
	public Timestamp getKeyRegDT() {
		return keyRegDT;
	}
	public void setKeyRegDT(Timestamp keyRegDT) {
		this.keyRegDT = keyRegDT;
	}
	public Timestamp getKeyModDT() {
		return keyModDT;
	}
	public void setKeyModDT(Timestamp keyModDT) {
		this.keyModDT = keyModDT;
	}
	public Timestamp getKeyRemDT() {
		return keyRemDT;
	}
	public void setKeyRemDT(Timestamp keyRemDT) {
		this.keyRemDT = keyRemDT;
	}
	public String getKeyConnectionTypeCD() {
		return keyConnectionTypeCD;
	}
	public void setKeyConnectionTypeCD(String keyConnectionTypeCD) {
		this.keyConnectionTypeCD = keyConnectionTypeCD;
	}
	public String getKeyDelNY() {
		return keyDelNY;
	}
	public void setKeyDelNY(String keyDelNY) {
		this.keyDelNY = keyDelNY;
	}
	
	

	
	
}
