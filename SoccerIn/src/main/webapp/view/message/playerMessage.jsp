<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function openPopup(id,t_name) {
 	var contextPath = "${pageContext.request.contextPath}"; // JSP 내에서 서블릿 컨텍스트 경로를 가져오는 방법
    var url = contextPath + "/TeamInfoController?id=" + id + "&t_name=" + t_name;
    var name = "popupWindow";
    var options = "width=400,height=300,scrollbars=yes";
    // 팝업 창 열기
    window.open(url, name, options);
}
</script>
</head>
<body>
	<h3>스카우트 리스트</h3>
	<table border= "1">
		<tr>
			<th>보내는곳</th><th>받는곳</th><th>수락</th><th>거절</th>
		</tr>
		<c:forEach var= "m" items= "${requestScope.list}">
			<tr onclick="openPopup('${m.id}','${m.t_name}')" style="cursor: pointer;">
				<td>${m.id }</td><td>${m.t_name }</td>
				<td>
				<form name= "TeamMessageForm" method= "post" action="${pageContext.request.contextPath}/MsgResponseController?id=${m.id}&t_name=${m.t_name}">
					<input type="submit" value="수락" > 
					<input type="hidden" name="response" value="0">
				</form>
				</td>
				<td>
				<form name= "TeamMessageForm" method= "post" action="${pageContext.request.contextPath}/MsgResponseController?id=${m.id}&t_name=${m.t_name}">
					<input type="submit" value="거절" > 
					<input type="hidden" name="response" value="1">
				</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>