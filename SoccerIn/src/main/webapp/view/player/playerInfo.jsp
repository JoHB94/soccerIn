<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1">
		<tr>
			<td colspan= "2">
				<img alt="" src="${requestScope.p_profile }" height= "300" width= "300">
			</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${requestScope.p_name }</td>
		</tr>
		<tr>
			<td>주소</td>
			<td>${requestScope.p_addr }</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>
				<c:choose>
					<c:when test="${ not empty requestScope.birth }">
						${ requestScope.birth}
					</c:when>
					<c:otherwise>
						입력한 정보가 없습니다.
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<td>신장</td>
			<td>
				<c:choose>
					<c:when test="${ not empty requestScope.height }">
						${ requestScope.height}
					</c:when>
					<c:otherwise>
						입력한 정보가 없습니다.
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<td>체중</td>
			<td>
			<c:choose>
				<c:when test="${ not empty requestScope.weight }">
					${ requestScope.weight}
				</c:when>
				<c:otherwise>
					입력한 정보가 없습니다.
				</c:otherwise>
			</c:choose>
			</td>
		</tr>
		<tr>
			<td>달리기</td>
			<td>
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
			</td>
		</tr>
		<tr>
			<td>포지션</td>
			<td>
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
			</td>
		</tr>
		<tr>
			<td colspan="2">자기소개</td>
		</tr>
		<tr>
		<td>
			<c:choose>
				<c:when test="${ not empty requestScope.p_intro }">
					${ requestScope.p_intro}
				</c:when>
				<c:otherwise>
					입력한 소개가 없습니다.
				</c:otherwise>
			</c:choose>
		</td>
		</tr>
	</table>
</body>
</html>