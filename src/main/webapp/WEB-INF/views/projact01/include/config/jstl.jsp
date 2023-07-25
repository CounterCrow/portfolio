<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.crowmarket.app.infra.common.code.CodeServiceImpl"/>
<jsp:useBean id="CategoryServiceImpl" class="com.crowmarket.app.infra.common.category.CategoryServiceImpl"/>
<!-- 지금날짜 캐쉬 태그 추가 -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="todayDateTime" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="todayDate" />