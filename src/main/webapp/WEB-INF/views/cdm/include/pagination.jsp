<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- 1~10까지 있는 페이지의 페이징 -->
<c:url var="action" value="/memList.do"/>
<c:if test="${param.prev}">
<a href="${action}?page=1">prev</a>
</c:if>
<c:forEach begin="${param.begin}" end="${param.end}" step="1" var="index">
    <c:choose>
        <c:when test="${param.page==index}">
            ${index}
        </c:when>
        <c:otherwise>
            <a href="${action}?page=${index}">${index}</a>
        </c:otherwise>
    </c:choose>
</c:forEach>
<c:if test="${param.next}">
<a href="${action}?page=11">next</a>
</c:if>
