<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="<%=request.getContextPath() %>/addr/insert.jsp">주소등록</a><br>
	<a href="<%=request.getContextPath() %>/Control?type=list">전체출력</a><br>
	<a href="<%=request.getContextPath() %>/addr/find.jsp">검색및수정</a>
</body>
</html>