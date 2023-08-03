<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.Article"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Article a =(Article)request.getAttribute("a");
%>

	<form action= "<%=request.getContextPath()%>/BoardController?type=edit&num=<%=a.getNum()%>" method= "post">
	<table border= "1">
		<tr>
		<th>글번호</th>
		<td><%=a.getNum() %></td>
		</tr>
		
		<tr>
		<th>작성자</th>
		<td><%=a.getWriter() %></td>
		</tr>
		
		<tr>
		<th>작성일</th>
		<td><%=a.getW_date() %></td>
		</tr>
		
		<tr>
		<th>글비밀번호</th>
		<td><input type="text" name= "pwd" value= "<%=a.getPwd()%>"></td>
		</tr>
		
		<tr>
		<th>글 내용</th>
		<td><textarea cols= "45" rows= "15" name= "content"><%=a.getContent() %></textarea></td>
		</tr>
		
		<tr>
		<td colspan="2"><input type="submit" value= "수정"></td>
		</tr>
	</table>
</form>
</body>
</html>