<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<BookVO> list =(ArrayList<BookVO>)request.getAttribute("data");
%>
<br>
<table border="1">
	<tr>
		<th>num</th> <th>title</th> <th>author</th>  <th>publisher</th> <th>content</th>
	</tr>
<%for(int i=0; i<list.size(); i++)	{ 
	BookVO x = list.get(i);%>
	<tr>
		<td><%=x.getNum() %></td>
		<td><%=x.getTitle() %></td>
		<td><%=x.getAuthor() %></td>
		<td><%=x.getPublisher() %></td>
		<td><%=x.getContent() %></td>
	</tr>
	
<%	}%>
</table>
</body>
</html>