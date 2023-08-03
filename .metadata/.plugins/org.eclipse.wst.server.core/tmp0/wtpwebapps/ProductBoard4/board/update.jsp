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
<%	ProductVO vo = (ProductVO)request.getAttribute("data"); %>
 <form name="insertForm" method="post" action="<%=request.getContextPath()%>/control?pno=<%=vo.getPno() %>">
 	<input type="hidden" name="type" value="edit">
 	<table>
		<tr><td>제품 명:<input type="text" name="pname" value="<%=vo.getPname()%>"></td></tr>
		<tr><td>회사 명:<input type="text" name="pmaker" value="<%=vo.getPmaker()%>"></td></tr>
		<tr><td>가  격:<input type="text" name="pprice" value="<%=vo.getPprice()%>"></td></tr>
		<tr><td>세부사항:<input type="text" name="pdetail" value="<%=vo.getPdetail()%>"></td></tr>
 	</table>
 	<input type="submit" value="수정">
 </form>


</body>
</html>

