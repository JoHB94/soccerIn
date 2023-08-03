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
<%
	String strings= "aaa,bbb,ccc,ddd,eee";
%>

<c:set var= "strings" value="<%=strings %>"/>

<table border="1">
	<c:forTokens var= "s" items= "${strings }" delims= "," varStatus= "status">
		<tr>
		<td>
			반복횟수 : ${status.count }<br>
			<c:if test= "${status.first }">
				첫번째 데이터 입니다.
			</c:if>
			<c:if test= "${status.last }">
				마지막 데이터 입니다.
			</c:if>
			${status.current }
		</td>
		</tr>
	</c:forTokens>
</table>
</body>
</html>