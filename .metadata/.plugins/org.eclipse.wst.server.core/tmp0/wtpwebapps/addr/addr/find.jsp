<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<form method="post" action="<%=request.getContextPath() %>/Control?type=update">
	검색할 주소 번호<input type="text" name="num">
	<input type="submit" value="전송">
</form>

<form method="post" action="<%=request.getContextPath() %>/Control?type=delete">
	삭제할 주소 번호<input type="text" name="num">
	<input type="submit" value="전송">
</form>
</body>
</html>