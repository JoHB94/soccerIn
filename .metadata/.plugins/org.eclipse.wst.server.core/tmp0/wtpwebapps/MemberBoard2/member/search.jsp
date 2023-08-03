<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr" import="member.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
<script type="text/javascript">
	function del(num){
		location.href = "${pageContext.request.contextPath}/DelBoardController?num" + num;
	}
</script>
</head>
<body>
<c:set var= "str">
	<c:if test= "${sessoinScope.id != writer }">
		readonly
	</c:if>
</c:set>

<form action="${pageContext.request.contextPath }/EditBoardController" method= "post">
	<table border= "1">
		<tr>
		<th>글 번호</th>
		<td><input type ="text" value= "${b.num }" name= "num" size= "45" readonly> </td>
		</tr>
		
		<tr>
		<th>작성자</th>
		<td><input type ="text" value= "${b.writer }" name= "writer" size= "45" readonly> </td>
		</tr>
		
		<tr>
		<th>작성날짜</th>
		<td><input type ="text" value= "${b.w_date }" name= "w_date" size= "45" readonly> </td>
		</tr>
		
		<tr>
		<th>글 내용</th>
		<td><textarea name= "content" rows= "15" cols= "45" ${str }>${b.content }</textarea> </td>
		</tr>
		
		<c:if test= "${sessoinScope.id == b.writer }">
			<tr>
				<td colspan= "2">
				<input type= "submit" value= "수정">
				<input type= "button" value= "삭제" onclick ="del(${b.num})">
				</td>
			</tr>
		</c:if>
	</table>
</form>

</body>
</html>