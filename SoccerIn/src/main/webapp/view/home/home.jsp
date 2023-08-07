<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href= "${pageContext.request.contextPath }/PlayerInfoController">내 정보 보기</a>
	<a href= "${pageContext.request.contextPath }/PlayerListController">선수 목록 보기</a>
	<a href= "${pageContext.request.contextPath }/PlayerEditFormController">내 정보 수정</a>
	<a href= "${pageContext.request.contextPath }/view/player/playerExit.jsp">회원 탈퇴</a>
	
	<hr>
	<a href= "${pageContext.request.contextPath }/view/team/teamCreate.jsp">구단 창설</a>
	
</body>
</html>