<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/team/css/teamInfoCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<div id = "back">
		<div id = "header"></div>
		<div id = "title">
			<p><b>Team Info</b></p>
		</div>
		<div id = "100">
			<div id = "card">
				<div id = "name">
					${requestScope.t.t_name }
				</div>
				<div id ="leftright">
					<div id="card_left">
						<img alt="" src="${requestScope.t.t_profile }">
					</div>
					<div id= "card_right">
						<ul>
							<li>구단주: ${requestScope.t.t_owner }</li>
							<li>활동지역: ${requestScope.t.t_addr }</li>
						</ul>
						<p>팀 소개</p>
						<div>
							${requestScope.t.t_intro }
						</div>
						<hr>
						<div id ="team_button">
							<form method= "post" action= "${pageContext.request.contextPath}/TeamEditFormController">
								<input type= "submit" value= "수정하기" >
								<input type= "hidden" name= "t_name" value= "${requestScope.t.t_name}">		
							</form>
							<form name= "DelForm" method= "post" action= "${pageContext.request.contextPath}/TeamDelController">
								<input type= "button" value= "삭제" onclick= "return checkDelTeam()" >
								<input type= "hidden" name= "t_name" value= "${requestScope.t.t_name}">		
							</form>
						</div>
					</div>
				</div>
				<div id = "card_button">
					
					<br>
					<form name ="ApplyForm" method= "post" action= "${pageContext.request.contextPath}/ApplyController">
						<input type= "hidden" name= "t_name" value="${requestScope.t.t_name}">
						<input type= "submit" value="입단신청하기">
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>