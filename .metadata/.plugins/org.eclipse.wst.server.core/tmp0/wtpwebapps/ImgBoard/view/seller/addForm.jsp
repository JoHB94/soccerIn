<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 등록</h3>
<form action="${pageContext.request.contextPath }/seller/Add" method="post" 
enctype="multipart/form-data">

상품명 :<input type= "text" name= "name"><br>
수량 :<input type= "text" name= "quantity"><br>
가격 :<input type= "text" name= "price"><br>
상품이미지등록 :<input type= "file" name= "file"><br>
상세설명 :<textarea rows="10" cols="30" name= "content"></textarea>
<input type= "submit" value= "등록">
</form>
</body>
</html>