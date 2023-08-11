<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/message/css/messageListCss.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="/view/home/header.jsp"></jsp:include>
<div id= "back">
	<div id= "header"></div>
	<div id = "title"><p><b>
		<c:choose>
			<c:when test="${requestScope.type == 0}">
				스카우트 리스트
			</c:when>
			<c:when test="${requestScope.type == 1}">
				입단 지원 리스트
			</c:when>
		</c:choose>
	</b></p></div>
	<div id="100">
		<div id= "card">
			<div id= "content">
				<div id= "table">
					
				</div>
			</div>
		</div>
	</div>
</div>

	
</body>
</html>