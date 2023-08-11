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
<link href="${pageContext.request.contextPath}/view/player/css/loginCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<c:if test="${not empty requestScope.message }">
		<script>
			fail();
		</script>
	</c:if>
	<div id = "back">
		<div id= "header"></div>
		<div id= "title">
			<p><b>LogIn</b></p>
		</div>
		<div id= "100">
			<div id="login_card">
				
				<div id= "content">
				<form name= "LoginForm" method= "post" action="${pageContext.request.contextPath }/LoginController">
					<table id= "table" >
						<tr id = "headline">
							<th id= "th">ID </th>
							<td><input type= "text" name= "id"> </td>
						</tr>
						<tr id = "headline">
							<th id= "th">PWD </th>
							<td><input type= "password" name= "pwd"> </td>
							<td><input id= "login_bottom" type="submit" value="로그인"></td>
						</tr>
					</table>
					<hr>			
					<a id= "login_bottom" href = "${pageContext.request.contextPath}/view/player/join.jsp">회원가입</a>
				</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>