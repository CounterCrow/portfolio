<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
publicCorona1List

<br>aaa resultCode : <c:out value="${resultCode }"/>
<br>aaa resultMsg : <c:out value="${resultMsg }"/>
<br>aaa pageNo : <c:out value="${pageNo }"/>
<br>aaa totalCount : <c:out value="${totalCount }"/>
<br>aaa numOfRows : <c:out value="${numOfRows }"/>
<br>aaa items : <c:out value="${items }"/>
<br>aaa items Size : <c:out value="${fn:length(items) }"/>
<hr>
<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="YYYY: ${item.YYYY }"/>
	<br><c:out value="MM: ${item.MM }"/>	
	<br><c:out value="KIT_PROD_QTY: ${item.KIT_PROD_QTY }"/>	
	<br><c:out value="KIT_EXPRT_QTY: ${item.KIT_EXPRT_QTY }"/>	
	<br><c:out value="KIT_STOCK_QTY: ${item.KIT_STOCK_QTY }"/>
	<br>	
</c:forEach>
</body>
</html>