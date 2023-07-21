package com.crowmarket.app.infra.commen.base;

import java.sql.Timestamp;

public class Base {
	
	private int delNY;
	private String regIP;
	private Timestamp regDT;
	private String modIP;
	private Timestamp modDT;
	private String remIP;
	private Timestamp remDT;
	
	/*---------------------------------------*/
	public int getDelNY() {
		return delNY;
	}
	public void setDelNY(int delNY) {
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
	

	
	

}
