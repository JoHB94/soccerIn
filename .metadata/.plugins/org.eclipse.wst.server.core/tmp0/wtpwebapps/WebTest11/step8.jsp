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
	���� ���α׷��� �⺻ ��� : ${pageContext.request.contextPath }	<br><br>
	
	�Ķ���� name : ${param.name } <br>
	�Ķ���� age : ${param.age } <br><br>
	
	scope�� �������� �Ⱦ��� ���� data �� : ${data } <br><br>
	
	scope�� pageContext�� �������� ���� data �� : ${pageScope.data } <br>
	scope�� request�� �������� ���� data �� : ${requestScope.data } <br>
	scope�� session���� �������� ���� data �� : ${sessionScope.data } <br>
	scope�� application���� �������� ���� data �� : ${applicationScope.data } <br>
</body>
</html>