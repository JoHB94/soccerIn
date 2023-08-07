<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function exit(){
		confirm("정말로 탈퇴하시겠습니까? 정보는 복구할 수 없습니다.");
		document.ExitForm.submit();
	}
</script>
</head>
<body>
	<h3>회원 탈퇴</h3>
	<form name= "ExitForm" method ="post" action="${pageContext.request.contextPath}/ExitController">
		<table>		
			<tr>
				<td>id</td>
				<td>
					<input type= "text" name= "id" value= "${sessionScope.id}" readonly>
				</td>
			</tr>
			<tr>
				<td>pwd</td>
				<td>
					<input type= "password" name= "pwd">
				</td>
			</tr>
			<tr>
				<td colspan= "2">
					<input type= "submit" value= "탈퇴" >
				</td>
			</tr>
		</table>
	
	</form>
</body>
</html>