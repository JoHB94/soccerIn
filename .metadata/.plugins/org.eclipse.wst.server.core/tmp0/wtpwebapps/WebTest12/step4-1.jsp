<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "model.MemberVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--jstl변수처리 --%>
<c:set var= "name" value= "${param.UserName }" ></c:set>
<c:set var= "age" value= "${param.UserAge }" ></c:set>


<c:choose>
	<c:when test= "${age> 18}">
		${name }님 성인입니다.
	</c:when>
	<c:when test= "${age>= 13 && age < 18} ">
	${name }님 청소년입니다.
	</c:when>
	<c:when test= "${age>= 18}">
	${name }님 성인입니다.
	</c:when>
</c:choose>

</body>
</html>