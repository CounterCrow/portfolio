package com.crowmarket.app.infra.commen.code;

import java.sql.Timestamp;

public class codeVo {
	
	private String codeSeq;
	private String keySeq;
	private String keyNameKO;
	private String keyNameEN;
	private String keyGroupSeq;
	private Timestamp keyregDT;
	private Timestamp keymodDT;
	/*------------------------------------------*/
	
	public String getCodeSeq() {
		return codeSeq;
	}
	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
	public String getKeySeq() {
		return keySeq;
	}
	public void setKeySeq(String keySeq) {
		this.keySeq = keySeq;
	}
	public String getKeyNameKO() {
		return keyNameKO;
	}
	public void setKeyNameKO(String keyNameKO) {
		this.keyNameKO = keyNameKO;
	}
	public String getKeyNameEN() {
		return keyNameEN;
	}
	public void setKeyNameEN(String keyNameEN) {
		this.keyNameEN = keyNameEN;
	}
	
	public String getKeyGroupSeq() {
		return keyGroupSeq;
	}
	public void setKeyGroupSeq(String keyGroupSeq) {
		this.keyGroupSeq = keyGroupSeq;
	}
	public Timestamp getKeyregDT() {
		return keyregDT;
	}
	public void setKeyregDT(Timestamp keyregDT) {
		this.keyregDT = keyregDT;
	}
	public Timestamp getKeymodDT() {
		return keymodDT;
	}
	public void setKeymodDT(Timestamp keymodDT) {
		this.keymodDT = keymodDT;
	}

}
