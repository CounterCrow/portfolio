<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- 코드 태그 -->

<!-- 카테고리 태그 -->
<c:set var="listCategoryProductType" value="${CategoryServiceImpl.selectListCachedCategory('1')}"/>
<c:set var="listCategoryBrand" value="${CategoryServiceImpl.selectListCachedCategory('5')}"/>
<c:set var="listCategoryUseType" value="${CategoryServiceImpl.selectListCachedCategory('9')}"/>
<c:set var="listCategoryConnectionType" value="${CategoryServiceImpl.selectListCachedCategory('12')}"/>
