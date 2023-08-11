<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/team/css/teamEditCss.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="/view/home/header.jsp"></jsp:include>
<div id ="back">
	<div id= "header"></div>
	<div id= "title">
		<p>팀 정보 수정<p>
	</div>
	<div id= "100">
		<div id= "content">
			<div id= "card">
				<form name="TeamEditController" method="post" action="${pageContext.request.contextPath}/TeamEditController" 
					enctype="multipart/form-data">
					<table>
					<tr id ="headline">
						<th id= "th">구단주</th>
						<td><input type="text" name= "t_owner" value= "${requestScope.t.t_owner}" readonly> </td>
					</tr>
					<tr id ="headline">
						<th id= "th">구단 명</th>
						<td><input type="text" name= "t_name" value= "${requestScope.t.t_name}" readonly> </td>
					</tr>
					<tr id ="headline">
						<th id= "th">활동지역</th>
						<td><input type="text" name= "t_addr" value= "${requestScope.t.t_addr}"> </td>
					</tr>
					<tr id ="headline">
						<th id= "th">프로필 사진</th>
						<td><input type= "file" name= "t_profile" value= "${requestScope.t.t_profile}"> </td>
					</tr>
					<tr id ="headline">
						<th id= "th">구단 소개</th>
						<td><textarea rows="15" cols="45" name= "t_intro" >${requestScope.t.t_intro}</textarea> </td>
					</tr>
				</table>
					
					<p>구인시장 등록여부</p>
					등록<input type= "radio" name= "onMarket" value= "1" >
					거절<input type= "radio" name= "onMarket" value= "0" >
				
				<p>*구인시장 등록시 선수들이 구단의 정보를 열람할 수 있습니다.*<p>
				
					<div>
						<input type="submit" value="수정">
						<input type="reset" value="취소">
					</div>
				
			</form>
			
			</div>
		</div>
	</div>
</div>
	
<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>