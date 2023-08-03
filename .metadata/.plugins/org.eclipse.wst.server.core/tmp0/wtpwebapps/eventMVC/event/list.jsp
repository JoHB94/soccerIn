<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*"%>  
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function a(num,pwd1,type){
		pwd=prompt("비밀번호를 입력하세요");
		if(pwd1==pwd){
			location.replace("<%=request.getContextPath()%>/control?num=" +num+ "&type=" +type);
		}else{
			alert("비밀번호 실패");
		}
	}
</script>
</head>
<body>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("data");
%>

<form action="">
	<table border="1">
		<tr><th>NUM</th><th>ID</th><th>EMAIL</th><th>PWD</th><th>삭제</th></tr>
		<%for(int i=0; i<list.size();i++){ 
			Member x = list.get(i); %>
		<tr>
			<td><%= x.getNum()%></td>
			<td><a href= "javascript: a('<%= x.getNum()%>','<%= x.getPwd()%>','editForm')"><%= x.getId() %></a></td>
			<td><%= x.getEmail() %></td>
			<td><%= x.getPwd() %></td>
			<td><input type= "button" value= "삭제" onclick= "a('<%= x.getNum()%>','<%= x.getPwd()%>','delete')"></td>
		</tr>
		<% }%>
	</table>
</form>
</body>
</html>




