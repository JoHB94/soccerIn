<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BookVO book=(BookVO)request.getAttribute("data");
%>

<br>
<table border="1">
	<tr>
		<th>num</th> <th>title</th> <th>author</th>  <th>publisher</th> <th>content</th>
	</tr>

	<tr>
		<%--<td><%=book.getNum() %></td>
		<td><%=book.getTitle() %></td>
		<td><%=book.getAuthor() %></td>
		<td><%=book.getPublisher() %></td>
		<td><%=book.getContent() %></td>--%>
	</tr>
	
</table>


</body>
</html>