<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SoccerIn 상세정보 입력</title>
</head>
<body>
	<h3>회원가입 상세</h3>
	<form name= "JoinInfoForm" method= "post" action= "${ pageContext.request.contextPath}/JoinController" enctype="multipart/form-data">
	<table border= "1">
		<tr>
			<td>생년월일</td>
			<td><input type= "date" name= "birth"> </td>
		</tr>
		<tr>
			<td>신장</td>
			<td><input type= "number" name= "height"> </td>
		</tr>
		<tr>
			<td>체중</td>
			<td><input type= "number" name= "weight"> </td>
		</tr>
		<tr>
			<td>포지션</td>
			<td>
				<select name= "position">
					<option value="NO">선택 안함</option>
					<option value="FW">공격수</option>
					<option value="MF">미드필더</option>
					<option value="DF">수비수</option>
					<option value="GK">골키퍼</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>주력</td>
			<td>
				<select name= "speed">
					<option value= "0">선택 안함</option>
					<option value= "5">매우빠름</option>
					<option value= "4">빠름</option>
					<option value= "3">보통</option>
					<option value= "2">느림</option>
					<option value= "1">매우느림</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>프로필 사진</td>
			<td><input type= "file" name= "profile"> </td>
		</tr>
		<tr>
			<td>자기소개</td>
			<td><textarea rows="15" cols="45" name= "p_intro"></textarea> </td>
		</tr>
		<tr>
			<td>이적시장 등록여부</td>
			<td>등록<input type= "radio" name= "onMarket" value= "1" >
				거절<input type= "radio" name= "onMarket" value= "0" > </td>
		</tr>
		<tr>*이적시장 등록시 구단에서 귀하의 정보를 열람할 수 있습니다.*</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="가입">
				<input type="reset" value="취소">
			</td>
		</tr>
		
	</table>
	<input type= "hidden" name= "id" value= "${requestScope.id }">
	<input type= "hidden" name= "pwd" value= "${requestScope.pwd }">
	<input type= "hidden" name= "p_name" value= "${requestScope.p_name }">
	<input type= "hidden" name= "p_email" value= "${requestScope.p_email }">
	<input type= "hidden" name= "p_addr" value= "${requestScope.p_addr }"> 
	</form>
</body>
</html>