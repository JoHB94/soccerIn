<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function fail(){
		alert("로그인 실패: 아이디와 비밀번호를 다시 확인해주세요.");
	}
</script>
</head>
<body>
	<c:if test="${not empty requestScope.message }">
		<script>
			fail();
		</script>
	</c:if>
	<h3>로그인</h3>
	<form name= "LoginForm" method= "post" action="${pageContext.request.contextPath }/LoginController">
		<table border="1">
			<tr>
				<td>Id</td>
				<td><input type= "text" name= "id"> </td>
			</tr>
			<tr>
				<td>pwd</td>
				<td><input type= "password" name= "pwd"> </td>
			</tr>
			<tr>
				<td colspan="2">
				<a href = "${pageContext.request.contextPath}/view/player/join.jsp">회원가입</a>
				<input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
</body>
</html>