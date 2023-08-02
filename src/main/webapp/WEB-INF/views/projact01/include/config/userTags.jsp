<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 공통코드 태그 -->
<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
<c:set var="listCodeRights" value="${CodeServiceImpl.selectListCachedCode('1')}"/>

<!-- 카테고리 태그 -->
<c:set var="listCategoryProductType" value="${CategoryServiceImpl.selectListCachedCategory('1')}"/>
<c:set var="listCategoryBrand" value="${CategoryServiceImpl.selectListCachedCategory('5')}"/>
<c:set var="listCategoryPurposeType" value="${CategoryServiceImpl.selectListCachedCategory('9')}"/>
<c:set var="listCategoryConnectionType" value="${CategoryServiceImpl.selectListCachedCategory('12')}"/>
<c:set var="listCategoryArrangementType" value="${CategoryServiceImpl.selectListCachedCategory('16')}"/>
<c:set var="listCategorySwitchType" value="${CategoryServiceImpl.selectListCachedCategory('19')}"/>
<!-- 상품코드 -->
<c:set var="listProductAll" value="${ProductServiceImpl.selectListCachedProduct()}"/>

<!-- 한국화페 쉼표 -->
<fmt:setLocale value="ko_KR"/>