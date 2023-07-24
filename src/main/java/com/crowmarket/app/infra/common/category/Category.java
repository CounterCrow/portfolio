package com.crowmarket.app.infra.common.category;

import java.util.ArrayList;
import java.util.List;

import com.crowmarket.app.infra.common.base.Base;

public class Category extends Base{

	private String categoryKO;
    private String categoryEN;
    private String categoryParents;
    private String categoryDepth;
    private String categoryUseNY;
    private String categoryOrder;
    
 // for 캐쉬
 	public static List<Category> cashedCategoryArrayList = new ArrayList<Category>();
    // --------------------------------------------------
	public String getCategoryKO() {
		return categoryKO;
	}
	public void setCategoryKO(String categoryKO) {
		this.categoryKO = categoryKO;
	}
	public String getCategoryEN() {
		return categoryEN;
	}
	public void setCategoryEN(String categoryEN) {
		this.categoryEN = categoryEN;
	}
	public String getCategoryParents() {
		return categoryParents;
	}
	public void setCategoryParents(String categoryParents) {
		this.categoryParents = categoryParents;
	}
	public String getCategoryDepth() {
		return categoryDepth;
	}
	public void setCategoryDepth(String categoryDepth) {
		this.categoryDepth = categoryDepth;
	}
	public String getCategoryUseNY() {
		return categoryUseNY;
	}
	public void setCategoryUseNY(String categoryUseNY) {
		this.categoryUseNY = categoryUseNY;
	}
	public String getCategoryOrder() {
		return categoryOrder;
	}
	public void setCategoryOrder(String categoryOrder) {
		this.categoryOrder = categoryOrder;
	}
    
	
}
