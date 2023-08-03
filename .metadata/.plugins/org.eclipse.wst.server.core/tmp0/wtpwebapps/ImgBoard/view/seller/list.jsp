<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>내가 등록한 상품</h3>
	<a href="${pageContext.request.contextPath }/seller/AddForm"> 새 상품
		등록 </a>
	<table border="1">
		<tr>
			<th>상품번호</th>
			<th>상품명</th>
		</tr>

		<c:forEach var="p" items="${products }">
			<tr>
				<td>${p.num }</td>
				<td><a href="${pageContext.request.contextPath }
					/seller/detail?num=${p.num }&name=${p.name}">${p.name }</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>