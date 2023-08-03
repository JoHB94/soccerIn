<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="<%=request.getContextPath()%>/control?type=search">
	검색할 제품번호:<input type="text" name="pno">
	<input type="submit" value="전송">
</form>

<form method="post" action="<%=request.getContextPath()%>/control?type=delete">
	삭제할 제품번호:<input type="text" name="pno">
	<input type="submit" value="전송">
</form>


</body>
</html>