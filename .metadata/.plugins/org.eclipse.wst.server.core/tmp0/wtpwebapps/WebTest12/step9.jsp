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
	<h3>url과 import예제</h3>
	<c:url var= "import_url" value= "step8.jsp"/>
	<c:import url= "${import_url }"></c:import>
	
	
</body>
</html>