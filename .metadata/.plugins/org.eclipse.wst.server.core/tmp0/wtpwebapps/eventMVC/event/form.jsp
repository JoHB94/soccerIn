<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action= "<%=request.getContextPath() %>/control" method= "post">
	<input type="hidden" name="type" value="insert">
	
	id:<input type ="text" name= "id"><br>
	email:<input type= "text" name= "email"><br>
	pwd:<input type= "password" name= "pwd"><br>
	<input type= "submit" value= "이벤트 등록">
	
	<a href= "<%=request.getContextPath() %>/control?type=list">등록자 명단보기</a>
	
</form>
</body>
</html>








