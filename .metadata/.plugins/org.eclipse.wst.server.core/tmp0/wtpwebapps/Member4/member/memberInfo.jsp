<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.Member"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Member m = (Member)request.getAttribute("m");
	%>
	<h3>내정보 수정</h3>
	
	<form action= "<%=request.getContextPath()%>/EditController" method="post">	
	id :<input type="text" name= "id" value= "<%=m.getId()%>" readonly>
	pwd :<input type="text" name= "pwd" value= "<%=m.getPwd()%>">
	name :<input type="text" name= "name" value= "<%=m.getName()%>">
	email :<input type="text" name= "email" value= "<%=m.getEmail()%>">
	<input type= "submit" value= "수정">
	</form>
	
</body>
</html>