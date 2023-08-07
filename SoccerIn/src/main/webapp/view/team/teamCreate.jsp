<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function dupName(){
		alert("팀 이름이 중복되었습니다.");
	}
</script>
</head>
<body>
	<c:if test="${not empty requestScope.dupT_name }">
		<script>
			dupName();
		</script>
	</c:if>
	<form name= "TeamCreateForm" method= "post" action="${pageContext.request.contextPath}/TeamCreateController" enctype="multipart/form-data">
		<table border= "1">
			<tr>
				<td>구단주</td>
				<td><input type="text" name= "t_owner" value= "${sessionScope.id}" readonly> </td>
			</tr>
			<tr>
				<td>구단 명</td>
				<td><input type="text" name= "t_name"> </td>
			</tr>
			<tr>
				<td>활동지역</td>
				<td><input type="text" name= "t_addr"> </td>
			</tr>
			<tr>
				<td>프로필 사진</td>
				<td><input type= "file" name= "t_profile"> </td>
			</tr>
			<tr>
				<td>구단 소개</td>
				<td><textarea rows="15" cols="45" name= "t_intro"></textarea> </td>
			</tr>
			<tr>
			<td>구인시장 등록여부</td>
			<td>등록<input type= "radio" name= "onMarket" value= "1" >
				거절<input type= "radio" name= "onMarket" value= "0" > </td>
		</tr>
		<tr><td colspan ="2">*구인시장 등록시 선수들이 구단의 정보를 열람할 수 있습니다.*<td></tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="가입">
				<input type="reset" value="취소">
			</td>
		</tr>
		</table>
	</form>
</body>
</html>