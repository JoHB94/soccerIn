<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/view/home/css/homeCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<div id = "back">
	 <div id="left">
	    <!-- 좌측 컬럼 내용 -->
	  </div>
	  <div id="center">
	    <div id="section1">
			
	      <!-- 가운데 컬럼 내부 섹션1 내용 -->
	     
	    </div>
	    <div id="section2">
	      <!-- 가운데 컬럼 내부 섹션2 내용 -->
	    </div>
	  </div>
	  <div id="right">
	    <!-- 우측 컬럼 내용 -->
	    <div id= "header"></div>
	     <h2>${sessionScope.id}님,<br> 환영합니다.</h2>
	      <a id= "home_logout" href ="${pageContext.request.contextPath}/LogoutController">
	      	로그아웃
	      </a>
	      <hr>
	      	<a href= "${pageContext.request.contextPath }/MsgListController?type=0&id=${sessionScope.id}">영입제안 리스트</a>
	      	<hr>
			<a href= "${pageContext.request.contextPath }/MsgListController?type=1&t_name=${sessionScope.t_name}">입단신청 리스트</a>
		<hr>
			<a href= "${pageContext.request.contextPath }/TeamCreateForm">구단 창설</a>
	  </div>
	</div>
	<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>