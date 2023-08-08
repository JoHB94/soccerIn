<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="TeamEditController" method="post" action="${pageContext.request.contextPath}/TeamEditController" 
		enctype="multipart/form-data">
			<table border= "1">
			<tr>
				<td>구단주</td>
				<td><input type="text" name= "t_owner" value= "${requestScope.t.t_owner}" readonly> </td>
			</tr>
			<tr>
				<td>구단 명</td>
				<td><input type="text" name= "t_name" value= "${requestScope.t.t_name}" readonly> </td>
			</tr>
			<tr>
				<td>활동지역</td>
				<td><input type="text" name= "t_addr" value= "${requestScope.t.t_addr}"> </td>
			</tr>
			<tr>
				<td>프로필 사진</td>
				<td><input type= "file" name= "t_profile" value= "${requestScope.t.t_profile}"> </td>
			</tr>
			<tr>
				<td>구단 소개</td>
				<td><textarea rows="15" cols="45" name= "t_intro" >${requestScope.t.t_intro}</textarea> </td>
			</tr>
			<tr>
			<td>구인시장 등록여부</td>
			<td>등록<input type= "radio" name= "onMarket" value= "1" >
				거절<input type= "radio" name= "onMarket" value= "0" > </td>
		</tr>
		<tr><td colspan ="2">*구인시장 등록시 선수들이 구단의 정보를 열람할 수 있습니다.*<td></tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<input type="reset" value="취소">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>