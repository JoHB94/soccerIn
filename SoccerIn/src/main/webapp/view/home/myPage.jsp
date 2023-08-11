<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/home/css/myPageCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<div id= "back">
		<div id ="header">
			
		</div>
		<div>
			<p id= "title">내 정보</p>
		</div>
		<div id= "100">
			<div id="card">
				<div id= "card_name">
				<a href= "${pageContext.request.contextPath }/MyInfoController">내 정보 보기</a>
				</div>
				<div id= "card_name">
				<a href= "${pageContext.request.contextPath }/PlayerEditFormController">내 정보 수정</a>
				</div>
				<div id= "card_name">
				<a href= "${pageContext.request.contextPath }/view/player/playerExit.jsp">회원 탈퇴</a>
				</div>
				<div id= "card_name">
				<a href= "${pageContext.request.contextPath }/MyTeamInfoController">내 구단 정보</a>
				</div>
			</div>		
		</div>
	</div>
	<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>