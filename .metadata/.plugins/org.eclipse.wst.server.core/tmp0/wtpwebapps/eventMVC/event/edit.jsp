<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member m=(Member)request.getAttribute("member");
%>
<form action="<%=request.getContextPath()%>/control?num=<%=m.getNum()%>" method="post">
<input type= "hidden" name= "type" value= "edit">

id:<input type= "text" name= "id" value= "<%=m.getId()%>" readonly><br>

email:<input type= "text" name= "email" value= "<%=m.getEmail()%>" ><br>

pwd:<input type= "text" name= "pwd" value= "<%=m.getPwd()%>" ><br>

<input type= "submit" value= "수정">
</form>

</body>
</html>




