package com.crowmarket.app.infra.commen.code;

import java.util.ArrayList;
import java.util.List;

import com.crowmarket.app.infra.commen.base.base;

public class code extends base {

	private String codeSeq;
	private String codeKO;
	private String codeEN;
	private String codeGroup_seq;
	/*------------------------------------------*/
	// for 캐쉬
	public static List<code> cashedCodeArrayList = new ArrayList<code>();
		
		
	public String getCodeSeq() {
		return codeSeq;
	}
	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
	public String getCodeKO() {
		return codeKO;
	}
	public void setCodeKO(String code) {
		this.codeKO = code;
	}
	public String getCodeEN() {
		return codeEN;
	}
	public void setCodeEN(String codeEN) {
		this.codeEN = codeEN;
	}
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	
	
	
}
