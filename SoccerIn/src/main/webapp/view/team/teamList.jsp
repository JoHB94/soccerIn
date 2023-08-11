<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/team/css/teamListCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<div id = "back">
		<div id= "header"></div>
		<div id= "title">
			<p><b>Team List</b></p>
		</div>
		<div id= "100">
			<div id="card">
				<div id= "card_title"></div>
				<div id= "content">
					<table id= "table" >
						<tr id = "headline">
							<th id= "th">구단명</th><th id= "th">구단주</th><th id= "th">활동지역</th>
						</tr>
						<c:forEach var= "t" items= "${requestScope.t }">
						<tr id = "headline" onclick="window.location.href='${pageContext.request.contextPath }/TeamInfoController?t_name=${t.t_name}'" 
							style="cursor: pointer;">
							<td id= "th">${t.t_name }</td><td id= "th">${t.t_owner }</td><td id= "th">${t.t_addr }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>