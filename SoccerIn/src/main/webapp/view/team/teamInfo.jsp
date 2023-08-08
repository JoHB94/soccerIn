<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function noOwner(){
		alert("수정 권한이 없습니다.");
	}
	
	function noOwnerDel(){
		alert("삭제 권한이 없습니다.");
	}
	
	
	function checkDelTeam(){
		var result = confirm("정말로 팀을 삭제하시겠습니까? 데이터는 복구되지 않습니다.");
		
		if(result){
			return document.DelForm.submit();
		} else {
			alert("삭제 취소.")
			return false;
		}
	}
</script>
</head>
<body>
	<!--requestScope에 등록된 t_name이 없으면, 내 구단 조회 중 session에 등록된 t_name이 없는것, 즉 가입된 팀이 없다.  -->
	<c:if test="${empty requestScope.t.t_name }">
		<jsp:forward page="/view/team/failTeamInfo.jsp"></jsp:forward>
	</c:if>
	<!-- requestScope에 NoOwner가 등록 되어 있다면, -->
	<c:if test="${not empty requestScope.NoOwner}">
		<script> noOwner(); </script>
	</c:if>
	<c:if test="${not empty requestScope.NoOwnerDel}">
		<script> noOwnerDel(); </script>
	</c:if>
	<table border="1">
		<tr>
			<td colspan= "2">${requestScope.t.t_name }</td>
		</tr>
		<tr>
			<td colspan= "2"><img alt="" src="${requestScope.t.t_profile }" height= "300" width= "300"></td>
		</tr>
		<tr>
			<td>구단주</td>
			<td>${requestScope.t.t_owner }</td>
		</tr>
		<tr>
			<td>활동지역</td>
			<td>${requestScope.t.t_addr }</td>
		</tr>
		<tr>
			<td colspan= "2">팀 소개</td>
		</tr>
		<tr>
			<td colspan= "2" >
				${requestScope.t.t_intro }
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<form action= "${pageContext.request.contextPath}/TeamEditFormController">
					<input type= "submit" value= "수정하기" >
					<input type= "hidden" name= "t_name" value= "${requestScope.t.t_name}">		
				</form>
				<form name= "DelForm" action= "${pageContext.request.contextPath}/TeamDelController">
					<input type= "button" value= "삭제" onclick= "return checkDelTeam()" >
					<input type= "hidden" name= "t_name" value= "${requestScope.t.t_name}">		
				</form>
			</td>
		</tr>
	</table>
</body>
</html>