package com.crowmarket.app.infra.commen.codeGroup;

import java.util.ArrayList;
import java.util.List;

import com.crowmarket.app.infra.commen.base.Base;

public class CodeGroup extends Base {

	private String codeGroupSeq;
	private String codeGroupKO;
	private String codeGroupEN;
	/*------------------------------------------*/
	// for 캐쉬
	public static List<CodeGroup> cashedCodeGroupArrayList = new ArrayList<CodeGroup>();
	
	public String getCodeGroupSeq() {
		return codeGroupSeq;
	}
	public void setCodeGroupSeq(String codeGroupSeq) {
		this.codeGroupSeq = codeGroupSeq;
	}
	public String getCodeGroupKO() {
		return codeGroupKO;
	}
	public void setCodeGroupKO(String codeGroupKO) {
		this.codeGroupKO = codeGroupKO;
	}
	public String getCodeGroupEN() {
		return codeGroupEN;
	}
	public void setCodeGroupEN(String codeGroupEN) {
		this.codeGroupEN = codeGroupEN;
	}
	
	
	
	
}
