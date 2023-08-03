<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		pageContext.setAttribute("data", "pageContext");
		request.setAttribute("data", "request");
		session.setAttribute("data", "session");
		application.setAttribute("data", "application");
	%>
	현재 프로그램의 기본 경로 : ${pageContext.request.contextPath }	<br><br>
	
	파라메터 name : ${param.name } <br>
	파라메터 age : ${param.age } <br><br>
	
	scope를 지정하지 안았을 때의 data 값 : ${data } <br><br>
	
	scope를 pageContext로 지정했을 때의 data 값 : ${pageScope.data } <br>
	scope를 request로 지정했을 때의 data 값 : ${requestScope.data } <br>
	scope를 session으로 지정했을 때의 data 값 : ${sessionScope.data } <br>
	scope를 application으로 지정했을 때의 data 값 : ${applicationScope.data } <br>
</body>
</html>