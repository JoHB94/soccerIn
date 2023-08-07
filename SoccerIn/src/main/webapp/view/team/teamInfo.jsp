<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan= "2">${requestScope.t.t_name }</td>
		</tr>
		<tr>
			<td colspan= "2"><img alt="" src="${requestScope.t.t_profile }" height= "300" width= "300"></td>
		</tr>
		<tr>
			<td>구단주</td>
			<td>${requestScope.t.t_owner }</td>
		</tr>
		<tr>
			<td>활동지역</td>
			<td>${requestScope.t.t_addr }</td>
		</tr>
		<tr>
			<td colspan= "2">팀 소개</td>
		</tr>
		<tr>
			<td colspan= "2" >
				${requestScope.t.t_intro }
			</td>
		</tr>
	</table>
</body>
</html>