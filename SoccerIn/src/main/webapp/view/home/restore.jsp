<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function failMessage(){
		var message = ${requestScope.failMessage};
		alert("message");
	}
</script>
</head>
<body>
<c:if test="${not empty requestScope.failMessage}">
	
</c:if>
	<a href= "${pageContext.request.contextPath }/MyInfoController">내 정보 보기</a>
	<a href= "${pageContext.request.contextPath }/PlayerListController">선수 목록 보기</a>
	<a href= "${pageContext.request.contextPath }/PlayerEditFormController">내 정보 수정</a>
	<a href= "${pageContext.request.contextPath }/view/player/playerExit.jsp">회원 탈퇴</a>
	
	<hr>
	<a href= "${pageContext.request.contextPath }/TeamCreateForm">구단 창설</a>
	<a href= "${pageContext.request.contextPath }/TeamListController">구인 구단 리스트</a>
	<a href= "${pageContext.request.contextPath }/MyTeamInfoController">내 구단 정보</a>
	<!-- 내 구단정보는 session에 t_name이 등록된 경우에만 누를수 있도록 한다. -->
	<a href= "${pageContext.request.contextPath }/MsgListController?type=0&id=${sessionScope.id}">영입제안 리스트</a>
	<a href= "${pageContext.request.contextPath }/MsgListController?type=1&t_name=${sessionScope.t_name}">입단신청 리스트</a>
	<hr>
	<a href= "${pageContext.request.contextPath }/LogoutController">로그아웃</a>
</body>
</html>