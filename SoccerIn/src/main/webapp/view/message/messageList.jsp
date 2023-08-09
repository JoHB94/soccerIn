<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		<c:choose>
			<c:when test="${requestScope.type == 0}">
				스카우트 리스트
			</c:when>
			<c:when test="${requestScope.type == 1}">
				입단 지원 리스트
			</c:when>
		</c:choose>
	</h3>
	<table border= "1">
		<tr>
			<th>구단이름</th><th>선수이름</th>
		</tr>
		<c:forEach var= "m" items= "${requestScope.list}">
			<tr onclick="window.location.href='${pageContext.request.contextPath }/PlayerInfoController?id=${p.id}'" 
			style="cursor: pointer;">
				
			</tr>
		</c:forEach>
	</table>
</body>
</html>