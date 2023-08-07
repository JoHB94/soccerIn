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
	<table border= "1">
		<tr>
			<th>구단명</th><th>구단주</th><th>활동지역</th>
		</tr>
		
		<c:forEach var= "t" items= "${requestScope.t }">
		<tr onclick="window.location.href='${pageContext.request.contextPath }/TeamInfoController?t_name=${t.t_name}'" 
			style="cursor: pointer;">
			<td>${t.t_name }</td><td>${t.t_owner }</td><td>${t.t_addr }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>