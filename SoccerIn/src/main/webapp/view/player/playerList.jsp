<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/player/css/playerListCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<div id = "back">
		<div id= "header"></div>
		<div id= "title">
			<p><b>Player List</b></p>
		</div>
		<div id= "100">
			<div id="card">
				<div id= "card_title"></div>
				<div id= "content">
					<table id= "table" >
						<tr id = "headline">
							<th id= "th">포지션</th><th id= "th">선수이름</th><th id= "th">지역</th><th id= "th">키</th><th id= "th">몸무게</th><th id= "th">달리기</th>
						</tr>
						<c:forEach var= "p" items= "${requestScope.list }">
						<tr id = "headline" onclick="window.location.href='${pageContext.request.contextPath }/PlayerInfoController?id=${p.id}'" 
							style="cursor: pointer;">
							<td id= "th">${p.position }</td><td id= "th">${p.p_name }</td><td id= "th">${p.p_addr }</td>
							<td id= "th">${p.height }</td><td id= "th">${p.weight }</td><td id= "th">${p.speed }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>