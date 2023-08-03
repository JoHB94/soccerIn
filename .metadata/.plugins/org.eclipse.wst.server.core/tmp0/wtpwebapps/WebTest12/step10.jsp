<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>param예제</h3>
	<c:url var= "import_url" value= "step11.jsp">
		<c:param name= "name" value= "aaa"/>
		<c:param name= "age" value= "12"/>
	</c:url>
	<c:import url= "${import_url }"/>
	
	
</body>
</html>