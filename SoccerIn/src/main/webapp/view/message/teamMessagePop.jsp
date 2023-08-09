<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/PlayerInfoController?id=${requestScope.id}"></jsp:include>
<form name= "MsgForm" method= "post" action="${pageContext.request.contextPath}/MsgResponseController">
	수락
	<input type="radio" name="response" value="0">
	거절
	<input type="radio" name="response" value="1"><br>
	<input type="submit"  value="전송" >
	<input type="hidden" name="id" value="${requestScope.id}">
	<input type="hidden" name="t_name" value="${requestScope.t_name}">
	
</form>
</body>
</html>