<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.crowmarket.app.infra.common.code.CodeServiceImpl"/>
<jsp:useBean id="CodeGroupServiceImpl" class="com.crowmarket.app.infra.common.codeGroup.CodeGroupServiceImpl"/>
<jsp:useBean id="CategoryServiceImpl" class="com.crowmarket.app.infra.common.category.CategoryServiceImpl"/>