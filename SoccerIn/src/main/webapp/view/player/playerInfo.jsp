<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/view/player/css/playerInfoCss.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/view/home/header.jsp"></jsp:include>
	<div id="pInfo_bg">
		<div id="pInfo_header"><!-- 헤더 들어갈 공백 부분 --></div>
		<div>
			<p id ="pInfo_title"><b>Player Info</b></p>
		</div>
		<div id="pInfo_100con">
		<div id= "pInfo_50con">
			<div id="pInfo_card">
				<div id= "pInfo_name">
					${requestScope.p_name }<hr>
				</div>
				<div id= "leftright">
				<div id="pInfo_card_left">
					<div id= "pInfo_profile">
						<img alt="" src="${requestScope.p_profile }">
					</div>
					<div id= "pInfo_essential">
						<ul>
							<li>포지션: 
								<c:if test="${not empty requestScope.position }">
									<c:choose>
										<c:when test="${ requestScope.position eq 'FW' }">
											공격수
										</c:when>
										<c:when test="${ requestScope.position eq 'MF' }">
											미드필더
										</c:when>
										<c:when test="${ requestScope.position eq 'DF' }">
											수비수
										</c:when>
										<c:when test="${ requestScope.position eq 'GK' }">
											골키퍼
										</c:when>
										<c:when test="${ requestScope.position eq 'NO' }">
											선택안함
										</c:when>
									</c:choose>			
								</c:if>
							</li>
							<li>신장: 
								<c:choose>
								<c:when test="${ not empty requestScope.height }">
									${ requestScope.height}
								</c:when>
								<c:otherwise>
									 정보가 없습니다.
								</c:otherwise>
								</c:choose>
							</li>
							<li>체중: 
								<c:choose>
								<c:when test="${ not empty requestScope.weight }">
									${ requestScope.weight}
								</c:when>
								<c:otherwise>
									 정보가 없습니다.
								</c:otherwise>
								</c:choose>
							</li>
							<li>속도:
								<c:if test="${not empty requestScope.speed }">
									<c:choose>
										<c:when test="${requestScope.speed == 5 }">
											매우 빠름
										</c:when>
										<c:when test="${requestScope.speed == 4 }">
											빠름
										</c:when>
										<c:when test="${requestScope.speed == 3 }">
											보통
										</c:when>
										<c:when test="${requestScope.speed == 2 }">
											느림
										</c:when>
										<c:when test="${requestScope.speed == 1 }">
											매우 느림
										</c:when>
										<c:when test="${requestScope.speed == 0 }">
											입력한 정보가 없습니다.
										</c:when>
									</c:choose>
								</c:if>
							</li>						
						</ul>
					</div>
				</div>
				
				<div id="pInfo_card_right">
					<div id= "pInfo_detail">
						<ul>
							<li>
								생년월일: 
								<c:choose>
									<c:when test="${ not empty requestScope.birth }">
										${ requestScope.birth}
									</c:when>
									<c:otherwise>
										입력한 정보가 없습니다.
									</c:otherwise>
								</c:choose>
							</li>
							<li>
								지역: ${requestScope.p_addr }
							</li>
						</ul>
						<hr>
						<p>자기소개</p><br>
						<c:choose>
							<c:when test="${ not empty requestScope.p_intro }">
								${ requestScope.p_intro}
							</c:when>
							<c:otherwise>
								입력한 소개가 없습니다.
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				</div>
				<div>
					<form name="ScoutForm" method="post" action="${pageContext.request.contextPath}/ScoutController">
						<input type= "hidden" name= "id" value="${requestScope.id}">
						<input type= "submit" value="영입제안하기">
					</form>
				</div>
			</div>
			</div>
		</div>
	</div>
	<jsp:include page="/view/home/footer.jsp"></jsp:include>
</body>
</html>