<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SoccerIn이적시장</title>
</head>
<body>
	<h3>이적시장</h3>
	<table border= "1">
		<tr>
			<th>포지션</th><th>이름</th><th>지역</th><th>키</th><th>몸무게</th><th>달리기</th>
		</tr>
		
		<c:forEach var= "p" items= "${requestScope.list }">
		<tr onclick="window.location.href='${pageContext.request.contextPath }/PlayerInfoController?id=${p.id}'" 
			style="cursor: pointer;">
			<td>${p.position }</td><td>${p.p_name }</td><td>${p.p_addr }</td>
			<td>${p.height }</td><td>${p.weight }</td><td>${p.speed }</td>
		</tr>
		</c:forEach>
		
	</table>
</body>
</html>