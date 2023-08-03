<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*"%>  
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% ArrayList<ProductVO> list = (ArrayList)request.getAttribute("data"); %>

<table border="1">
	<tr>
		<th>번호</th><th>제품명</th><th>회사명</th><th>가격</th><th>세부설명</th>
	</tr>
<%for(int i=0; i<list.size(); i++){ 
	ProductVO vo = list.get(i);%>
	<tr>
		<td><%=vo.getPno() %></td>
		<td><%=vo.getPname() %></td>
		<td><%=vo.getPmaker() %></td>
		<td><%=vo.getPprice() %></td>
		<td><%=vo.getPdetail() %></td>
	</tr>
<% }%>
</table>
</body>
</html>




